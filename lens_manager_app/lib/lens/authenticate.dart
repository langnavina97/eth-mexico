import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:lens_manager/graphql/graphql_client.dart';
import 'package:lens_manager/injection.dart';
import 'package:lens_manager/wallet_connect/wallet_connect_bloc/wallet_connect_bloc.dart';

import '../wallet_connect/wallet_connect_failure.dart';

class AuthenticateLens {
  AuthenticateLens();
  Future<void> signNounce() async {
    String address =
        getIt.get<WalletConnectBloc>().state.selectedWalletAddress ?? "";

    final resp = await getIt<DPGraphQLClient>()
        .graphQLClient
        .query(QueryOptions(document: gql(GET_CHALLENGE), variables: {
          'request': {'address': address},
        }));
    String nounce_to_sign = resp.data!["challenge"]["text"];

    Either<WalletConnectFailure, String> signed_nounce =
        await getIt.get<WalletConnectBloc>().sign(message: nounce_to_sign);

    var resp2 = await signed_nounce.fold((l) {
      return null;
    }, (r) async {
      return await getIt<DPGraphQLClient>()
          .graphQLClient
          .mutate(MutationOptions(document: gql(AUTHENTICATION), variables: {
            "request": {
              'address': address,
              'signature': r,
            }
          }));
    });

    if (resp2 != null) {
      //TODO

    }

    print(resp2);
  }

  String AUTHENTICATION = """
  mutation(\$request: SignedAuthChallenge!) { 
    authenticate(request: \$request) {
      accessToken
      refreshToken
    }
 }
""";

  String GET_CHALLENGE = """
  query(\$request: ChallengeRequest!) {
    challenge(request: \$request) { text }
  }
""";
}
