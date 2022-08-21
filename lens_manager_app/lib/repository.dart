import 'package:lens_manager/injection.dart';
import 'package:lens_manager/wallet_connect/wallet_connect_bloc/wallet_connect_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lens_manager/wallet_connect/wallet_connect_failure.dart';
import 'package:dartz/dartz.dart';

class Repository {
  Future<Either<WalletConnectFailure, Unit>> signInWithEthereum() async {
    // Create Session
    var sessionStatus = await getIt.get<WalletConnectBloc>().signIn();

    //check if error, otherwise get nonce from server
    //TODO fix failure types
    return await sessionStatus.fold((l) async {
      return left(WalletConnectFailure.unexpected());
    }, (status) async {
      String? walletAdress =
          getIt.get<WalletConnectBloc>().state.selectedWalletAddress;

      //sign the nounce with the private key
      var signResp = await getIt.get<WalletConnectBloc>().sign(message: "asd");

      return signResp.fold((l) => left(WalletConnectFailure.notConnected()),
          (r) async {
        return right(unit);
      });
    });
  }
}
