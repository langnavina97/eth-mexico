import 'package:dartz/dartz.dart' as d;
import 'package:ethers/ethers.dart' as e;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_manager/injection.dart';
import 'package:lens_manager/wallet_connect/wallet_connect_bloc/wallet_connect_bloc.dart';
import 'package:lens_manager/wallet_connect/wallet_connect_failure.dart';

class UserMenu extends StatefulWidget {
  @override
  State<UserMenu> createState() => _UserMenuState();
}

class _UserMenuState extends State<UserMenu> {
  String message = "";
  String signedMessage = "";

  var data = {
    "_format": "hh-sol-artifact-1",
    "contractName": "console",
    "sourceName": "hardhat/console.sol",
    "abi": [],
    "bytecode":
        "0x60566050600b82828239805160001a6073146043577f4e487b7100000000000000000000000000000000000000000000000000000000600052600060045260246000fd5b30600052607381538281f3fe73000000000000000000000000000000000000000030146080604052600080fdfea2646970667358221220ed7c8e1f8f3b25df608ceb16bdd108d84fe66600fa025a50c35777b0eb98165564736f6c634300080a0033",
    "deployedBytecode":
        "0x73000000000000000000000000000000000000000030146080604052600080fdfea2646970667358221220ed7c8e1f8f3b25df608ceb16bdd108d84fe66600fa025a50c35777b0eb98165564736f6c634300080a0033",
    "linkReferences": {},
    "deployedLinkReferences": {}
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<WalletConnectBloc, WalletConnectState>(
          bloc: getIt.get<WalletConnectBloc>(),
          builder: ((context, state) {
            return Column(
              children: [
                Text(state.selectedWalletAddress.toString()),
                TextField(
                  onSubmitted: (value) => setState(() {
                    message = value;
                  }),
                ),
                TextButton(
                    onPressed: () async {
                      d.Either<WalletConnectFailure, String> result =
                          await getIt
                              .get<WalletConnectBloc>()
                              .sign(message: "{data:$message}");
                      result.fold(
                          (l) => setState(() {
                                signedMessage = "error";
                              }),
                          (r) => setState(() {
                                signedMessage = r;
                              }));
                    },
                    child: Text("sign message")),
                Text("Signed Message: " + signedMessage),
                TextButton(
                    onPressed: () async {
                      // String address = getIt
                      //         .get<WalletConnectBloc>()
                      //         .state
                      //         .selectedWalletAddress ??
                      //     "";

                      // Contract contract =
                      //     Contract(address, data["abi"], state.ethProvider);

                      //  contract. connect(state.ethProvider);

                      // await contract.connect(state.connector).;

                      // await tokenContract.deployed();
                    },
                    child: Text("Deploy"))
              ],
            );
          })),
    );
  }
}
