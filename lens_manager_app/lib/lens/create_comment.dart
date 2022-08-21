import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:lens_manager/graphql/graphql_client.dart';
import 'package:lens_manager/injection.dart';
import 'package:lens_manager/lens/queries.dart';

class CreateCommentPage extends StatelessWidget {
  String createCommentTypedData = """
  mutation CreateCommentTypedData {
  createCommentTypedData(request: {
    profileId: "0x03",
    publicationId: "0x01-0x01",
    contentURI: "ipfs://QmPogtffEF3oAbKERsoR4Ky8aTvLgBF5totp5AuF8YN6vl",
    collectModule: {
      revertCollectModule: true
    },
    referenceModule: {
      followerOnlyReferenceModule: false
    }
  }) {
    id
    expiresAt
    typedData {
      types {
        CommentWithSig {
          name
          type
        }
      }
      domain {
        name
        chainId
        version
        verifyingContract
      }
      value {
        nonce
        deadline
        profileId
        profileIdPointed
        pubIdPointed
        contentURI
        referenceModuleData
        collectModule
        collectModuleInitData
        referenceModule
        referenceModuleInitData
      }
    }
  }
}
""";

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
        client: ValueNotifier(getIt<DPGraphQLClient>().graphQLClient),
        child: Query(
          options: QueryOptions(
            document: gql(
                createCommentTypedData), // this is the query string you just created
            variables: {},
            pollInterval: const Duration(seconds: 10),
          ),
          // Just like in apollo refetch() could be used to manually trigger a refetch
          // while fetchMore() can be used for pagination purpose
          builder: (QueryResult result,
              {VoidCallback? refetch, FetchMore? fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.isLoading) {
              return const Text('Loading');
            }

            List? repositories =
                result.data?['viewer']?['repositories']?['nodes'];

            if (repositories == null) {
              return const Text('No repositories');
            }

            return ListView.builder(
                itemCount: repositories.length,
                itemBuilder: (context, index) {
                  final repository = repositories[index];

                  return Text(repository['name'] ?? '');
                });
          },
        ));
  }
}
