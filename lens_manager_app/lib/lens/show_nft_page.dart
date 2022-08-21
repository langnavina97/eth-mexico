import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:lens_manager/graphql/graphql_client.dart';
import 'package:lens_manager/injection.dart';
import 'package:lens_manager/lens/queries.dart';

class ShowNFTPage extends StatelessWidget {
  String readRepositories = """
  query ReadRepositories(\$nRepositories: Int!) {
    viewer {
      repositories(last: \$nRepositories) {
        nodes {
          id
          name
          viewerHasStarred
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
            document:
                gql(getAllNFTs), // this is the query string you just created
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
