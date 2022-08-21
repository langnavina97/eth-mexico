import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:lens_manager/authenticate_lens_page.dart';
import 'package:lens_manager/call_contract.dart';
import 'package:lens_manager/graphql/graphql_client.dart';
import 'package:lens_manager/injection.dart';
import 'package:lens_manager/lens/authenticate.dart';
import 'package:lens_manager/lens/show_nft_page.dart';
import 'package:lens_manager/repository.dart';
import 'package:lens_manager/user_menu.dart';
import 'package:lens_manager/wallet_connect/wallet_connect_bloc/wallet_connect_bloc.dart';

void main() async {
  configureInjection("Dev");
  dotenv.load(fileName: "../.env");
  //Initialize walletconnect
  getIt.get<WalletConnectBloc>()
    ..add(WalletConnectEvent.initialize(chainId: 137));
  await getIt.getAsync<DPGraphQLClient>();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
        client: ValueNotifier(getIt<DPGraphQLClient>().graphQLClient),
        child: MaterialApp(
          title: 'Lens Manager',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            // '/c': (context) => UserMenu(),

            '/lens-auth': (context) => AuthenticateLensPage(),
            '/showNFTs': (context) => ShowNFTPage(),
            // '/callContract': (context) => CallContract(
            //       'Call Contract',
            //     ),
            '/': (context) => MyHomePage(
                  title: 'Lens Manager',
                ),
            // When navigating to the "/second" route, build the SecondScreen widget.
          },
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: BlocListener<WalletConnectBloc, WalletConnectState>(
            bloc: getIt.get<WalletConnectBloc>(),
            listener: (context, state) {
              if (state.connected) {
                Navigator.pushNamed(context, '/lens-auth');
              }
            },
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Welcome to Lens Manager:',
                ),
                TextButton(
                    onPressed: () => Repository().signInWithEthereum(),
                    child: Text("Sign in with Ethereum"))
              ],
            ))));
  }
}
