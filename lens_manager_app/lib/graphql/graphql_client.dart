import 'dart:async';

import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@singleton
class DPGraphQLClient {
  final GraphQLClient graphQLClient;
  final HiveStore hiveStore;
  final GraphQLCache graphQLCache;

  const DPGraphQLClient(this.graphQLClient, this.hiveStore, this.graphQLCache);

  @factoryMethod
  static Future<DPGraphQLClient> initGraphQLClient() async {
    // await Hive.initFlutter();

    // final box = await Hive.openBox<Map<String, dynamic>>("graphql");

    // await box.clear();

    // hiveStore = HiveStore(box);

    // graphQLCache = GraphQLCache(store: hiveStore);
    var applicationsDocumentDirectory =
        await getApplicationDocumentsDirectory();
    var hiveBoxPath = '${applicationsDocumentDirectory.path}/dashpoint';

    final store = await HiveStore.open(path: hiveBoxPath);

    //await initHiveForFlutter();
    String graphql_link = "https://api-mumbai.lens.dev/";

// http://localhost:4000/graphql for local testing
    final HttpLink httpLink = HttpLink(graphql_link);

    /// TODO ??
    //  final AuthLink authLink = AuthLink(
    //   getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    //   // OR
    //   // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    // );

    final printLink = Link.function((request, [forward]) {
      // var doc = request.operation.document;
      // var opName = request.operation.operationName;

      // doc.definitions.forEach(
      //   (element) => log(element.toString()),
      // );
      //doc.definitions.where((def) => def.span?.text.contains("other") == true);

      //Request(operation: Operation(document: , operationName: ))
      log(request.operation.document.definitions.toString());
      log(request.toString());
      return forward!(request);
    });

    // final Link link = printLink.concat(authLink.concat(httpLink));

    var cache = GraphQLCache(store: store);

    var graphQLClient = GraphQLClient(link: httpLink, cache: cache);

    return DPGraphQLClient(graphQLClient, store, cache);
  }
}
