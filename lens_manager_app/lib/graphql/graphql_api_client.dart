import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;

class GraphQLApiClient {
  GraphQLApiClient()
      : graphQLClient = ValueNotifier<GraphQLClient>(
          GraphQLClient(
            cache: GraphQLCache(store: HiveStore()),
            link: HttpLink(
              'https://api-mumbai.lens.dev/',
              // httpClient: LoggerHttpClient(http.Client()),
            ),
          ),
        );

  final ValueNotifier<GraphQLClient> graphQLClient;

  Future<QueryResult> query(
    DocumentNode query, {
    required Map<String, dynamic> variables,
  }) async {
    final QueryResult result = await graphQLClient.value.query(QueryOptions(
      document: query,
      variables: variables,
    ));

    if (result.exception != null) {
      print(result.exception);
      // for (final GraphQLError error in result.exception.graphqlErrors) {
      //   print(error.message);

    }

    return result;
  }

//  void setCookie(Cookie sidCookie) {
//    graphQLClient.value = GraphQLClient(
//        cache: graphQLClient.value.cache,
//        link: HttpLink(
//          httpClient: _httpClient,
//          uri: _appConfig.graphQLBaseUrl,
//          headers: <String, String>{
//            'cookie': 'sid=${sidCookie.value};',
//          },
//        ));
//  }
//
//  void clearCookies() {
//    graphQLClient.value = GraphQLClient(
//      cache: graphQLClient.value.cache,
//      link: HttpLink(
//        uri: _appConfig.graphQLBaseUrl,
//      ),
//    );
//  }
//
//  Future<QueryResult> query(
//    DocumentNode documentNode, {
//    Map<String, dynamic> variables,
//  }) async {
//    final QueryResult result = await graphQLClient.value.query(QueryOptions(
//      documentNode: documentNode,
//      pollInterval: 10,
//      variables: variables,
//    ));
//
//    if (result.exception != null) {
//      // todo error処理
//      for (final GraphQLError error in result.exception.graphqlErrors) {
//        // todo
//        if (error.message == 'U001 NOT_LOGIN') {
//          throw const AppError(
//              code: ErrorCode.NOT_LOGIN_ERROR, cause: 'Token is expired.');
//        }
//      }
//      Log.e(result.exception.toString());
//    }
//
//    return result;
//  }
//
//  Future<QueryResult> mutate(
//    DocumentNode documentNode, {
//    Map<String, dynamic> variables,
//  }) async {
//    final QueryResult result = await graphQLClient.value.mutate(
//        MutationOptions(documentNode: documentNode, variables: variables));
//
//    if (result.exception != null) {
//      for (final GraphQLError error in result.exception.graphqlErrors) {
//        // todo
//        if (error.message == 'U001 NOT_LOGIN') {
//          throw const AppError(
//              code: ErrorCode.NOT_LOGIN_ERROR, cause: 'Token is expired.');
//        }
//      }
//      Log.e(result.exception.toString());
//    }
//
//    return result;
//  }
// }
}
