import "dart:developer";

import "package:ferry/ferry.dart";

import "package:gql_exec/gql_exec.dart";
import "package:graph_auth_mobile/core/either/either.dart";
import "package:graph_auth_mobile/core/error/failure.dart";
import "package:graph_auth_mobile/core/local_source/local_source.dart";
import "package:graph_auth_mobile/features/profile/data/__generated__/get_profile.data.gql.dart";
import "package:graph_auth_mobile/features/profile/data/__generated__/get_profile.req.gql.dart";
import "package:graph_auth_mobile/features/profile/domain/repository/profile_repository.dart";
import "package:graph_auth_mobile/injector_container.dart";

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({required Client profileClient})
      : _profileClient = profileClient;

  final Client _profileClient;
  LocalSource get _localSource => sl<LocalSource>();
  @override
  Future<Either<Failure, GGetProfileData_profile?>> getProfile() async {
    try {
      final token = _localSource.accessToken;

      if (token.isEmpty) {
        return const Left(
          ServerFailure(message: "Not authenticated"),
        );
      }

      final context = Context().withEntry(
        HttpLinkHeaders(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      final req = GGetProfileReq((b) => b..context = context);
      final response = await _profileClient.request(req).first;

      // Link xatolari (401, tarmoq, va hokazo)
      if (response.linkException != null) {
        final msg = response.linkException.toString();
        log('Profile linkException: $msg');
        return Left(ServerFailure(message: msg));
      }

      // GraphQL xatolari
      if (response.hasErrors &&
          response.graphqlErrors != null &&
          response.graphqlErrors!.isNotEmpty) {
        final errorMessage =
            response.graphqlErrors!.first.message;
        log('Profile GraphQL error: $errorMessage');
        return Left(ServerFailure(message: errorMessage));
      }

      final profile = response.data?.profile;
      if (profile == null) {
        return const Left(
          ServerFailure(message: "Profile data is empty"),
        );
      }
      return Right(profile);
    } catch (e, st) {
      log('Profile fetch error: $e', stackTrace: st);
      return Left(
        ServerFailure(message: e.toString()),
      );
    }
  }
}
