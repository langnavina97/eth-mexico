import 'dart:async';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lens_manager/wallet_connect/wallet_connect_failure.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

part 'wallet_connect_bloc.freezed.dart';
part 'wallet_connect_event.dart';
part 'wallet_connect_state.dart';

@singleton
class WalletConnectBloc extends Bloc<WalletConnectEvent, WalletConnectState> {
  WalletConnectBloc() : super(WalletConnectState.initial()) {
    on<WalletConnectEvent>(_mapEventToState);
  }

  void _mapEventToState(
      WalletConnectEvent event, Emitter<WalletConnectState> emit) async {
    await event.map(
      initialize: (e) async {
        final connector = WalletConnect(
          bridge: 'https://bridge.walletconnect.org',
          clientMeta: const PeerMeta(
            name: 'Lens Manager',
            description: 'Making Lens Secure',
            url: 'https://dashpoint.app',
            icons: [
              'https://firebasestorage.googleapis.com/v0/b/dashpoint-dev.appspot.com/o/logo-only-fist.png?alt=media&token=f3fa5db6-48a9-4ea2-bcbd-de7a301a1856'
            ],
          ),
        );

        emit(state.copyWith(initialized: true, connector: connector));
        // Subscribe to events
        connector.registerListeners(
            onConnect: (sessionStatus) =>
                add(WalletConnectEvent.connected(sessionStatus)),
            onSessionUpdate: (sessionUpdateStatus) =>
                add(WalletConnectEvent.sessionUpdate(sessionUpdateStatus)),
            onDisconnect: () => add(WalletConnectEvent.disconnected()));
      },
      createSession: (e) async {
        if (!state.connected && state.connector != null) {
          //create session for chainId or polygon
          var sessionStatus = await state.connector!.createSession(
              chainId: state.chainID,
              onDisplayUri: e.onDisplayUri ?? (uri) => launchUrlString(uri));

          add(WalletConnectEvent.createdSession(sessionStatus: sessionStatus));
        }
      },

      // callConntract: (e) async {

      // },
      createdSession: (e) async {
        print("WC-CreatedSession:");
        emit(state.copyWith(
            connected: true,
            sessionStatus: e.sessionStatus,
            ethProvider: EthereumWalletConnectProvider(state.connector!,
                chainId: e.sessionStatus.chainId)));

        if (e.sessionStatus.accounts.isNotEmpty) {
          //TODO remove later to let user select
          add(WalletConnectEvent.selectWallet(e.sessionStatus.accounts.first));
        }
      },
      selectWallet: (e) async {
        print("WC-SelectedWallet:" + e.walletAddress);
        emit(state.copyWith(
          selectedWalletAddress: e.walletAddress,
        ));
      },
      connected: (e) async {
        print("WC-Connected:" + e.status.toString());
        emit(state.copyWith(
          connected: true,
        ));
      },
      sessionUpdate: (e) async {
        //TODO
        print("WC-SessionUpdate:" + e.updateResponse.toString());
      },
      disconnected: (e) async {
        print("WC-Disconnected:");
        emit(state.copyWith(
          selectedWalletAddress: null,
          connected: false,
          sessionStatus: null,
          ethProvider: null,
        ));
      },
    );
  }

  Future<Either<WalletConnectFailure, SessionStatus>> signIn() async {
    if (!state.initialized || state.connector == null) {
      return left(WalletConnectFailure.notInitialized());
    }
    if (state.connected) {
      await state.connector!.killSession(sessionError: "Reconnecting");
      //return left(WalletConnectFailure.alreadyConnected());
    }
    //create session for chainId or polygon
    var sessionStatus = await state.connector!.createSession(
        chainId: state.chainID, onDisplayUri: (uri) => launchUrlString(uri));

    add(WalletConnectEvent.createdSession(sessionStatus: sessionStatus));
    return right(sessionStatus);
  }

  Future<Either<WalletConnectFailure, String>> sign(
      {required String message}) async {
    if (!state.initialized) {
      return left(WalletConnectFailure.notInitialized());
    }
    if (!state.connected) {
      return left(WalletConnectFailure.notConnected());
    }
    if (state.selectedWalletAddress == null) {
      return left(WalletConnectFailure.noWalletSelected());
    }

    //launch the wallet to approve transactions
    launchUrlString(state.connector!.session.toUri());
    //send the sign request
    // var resp = await state.connector!.sendCustomRequest(
    //   method: 'personal_sign',
    //   params: [state.selectedWalletAddress!, message],
    // );
    var resp = await state.ethProvider!.sign(
      message: message,
      address: state.selectedWalletAddress!,
    );

    print("Sign Resp:" + resp);

    //return the signed message
    return right(resp);
  }

  Future<Either<WalletConnectFailure, String>> sendTransaction({
    String? to,
    Uint8List? data,
    int? gas,
    BigInt? gasPrice,
    BigInt? value,
    int? nonce,
  }) async {
    if (!state.initialized) {
      return left(WalletConnectFailure.notInitialized());
    }
    if (!state.connected) {
      return left(WalletConnectFailure.notConnected());
    }
    if (state.selectedWalletAddress == null) {
      return left(WalletConnectFailure.noWalletSelected());
    }
    //launch the wallet to approve transactions
    launchUrlString(state.connector!.session.toUri());

    //send the sign request
    var resp = await state.ethProvider!.sendTransaction(
      from: state.selectedWalletAddress!,
    );
    print("Send Transaction Resp:" + resp);

    //return the signed message
    return right(resp);
  }

  // Future<List<dynamic>> query(String functionName, List<dynamic> args) async {
  //   DeployedContract contract = await getContract();
  //   ContractFunction function = contract.function(functionName);
  //   List<dynamic> result = await state.connector .call(
  //       contract: contract, function: function, params: args);
  //   return result;
  // }

  // Future<String> transaction(String functionName, List<dynamic> args) async {
  //   DeployedContract contract = await getContract();
  //   ContractFunction function = contract.function(functionName);

  //   var ethClient = Web3Client(apiUrl, httpClient);
  //   var credentials =  EthPrivateKey.fromHex("0x...");

  //   dynamic result = ethClient.sendTransaction(
  //     credentials,
  //     Transaction.callContract(
  //       contract: contract,
  //       function: function,
  //       parameters: args,
  //     ),
  //     fetchChainIdFromNetworkId: true,
  //     chainId: null,
  //   );

  //   return result;
  // }

  // Future<DeployedContract> getContract() async {
  //   String abi = await rootBundle.loadString("assets/abi.json");
  //   String contractAddress = "0xd55B64d9b7816f2e2D9be07CbC52303A77B7163b";

  //   DeployedContract contract = DeployedContract(
  //     ContractAbi.fromJson(abi, "contractName"),
  //     EthereumAddress.fromHex(contractAddress),
  //   );

  //   return contract;

}
