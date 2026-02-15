// import 'package:ferry/ferry.dart';
// import 'package:ferry/ferry_websocket.dart';
// import 'package:ferry_flutter/ferry_flutter.dart';
// import 'package:gql_http_link/gql_http_link.dart';
// import 'package:gql_websocket_link/gql_websocket_link.dart';
// import 'package:graph_auth_mobile/injector_container.dart';
//
// class GraphQLClient {
//   static Client? _client;
//   static const String _baseUrl = 'https://graphql-pokemon2.vercel.app/';
//
//   static Client get client {
//     _client ??= _initClient();
//     return _client!;
//   }
//
//   static Client _initClient() {
//     final httpLink = HttpLink(_baseUrl);
//
//     // Create the client
//     final client = Client(
//       link: httpLink,
//       cache: Cache(),
//     );
//
//     return client;
//   }
//
//   // Helper method to execute a query
//   static Stream<OperationResponse<TData, dynamic>> query<TData, TVars>(
//     OperationRequest<TData, TVars> request, {
//     bool fetchPolicy = FetchPolicy.CacheFirst,
//   }) {
//     return client.request(request, fetchPolicy: fetchPolicy);
//   }
//
//   // Helper method to execute a mutation
//   static Stream<OperationResponse<TData, dynamic>> mutate<TData, TVars>(
//     OperationRequest<TData, TVars> request, {
//     bool fetchPolicy = FetchPolicy.NetworkOnly,
//   }) {
//     return client.request(request, fetchPolicy: fetchPolicy);
//   }
// }
