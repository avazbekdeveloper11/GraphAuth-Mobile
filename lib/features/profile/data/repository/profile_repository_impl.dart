import "package:ferry/ferry.dart";
import "package:gql_exec/gql_exec.dart";
import "package:graph_auth_mobile/core/either/either.dart";
import "package:graph_auth_mobile/core/error/failure.dart";
import "package:graph_auth_mobile/core/local_source/local_source.dart";
import "package:graph_auth_mobile/features/auth/domain/repository/auth_repository.dart";
import "package:graph_auth_mobile/features/profile/data/__generated__/get_profile.data.gql.dart";
import "package:graph_auth_mobile/features/profile/data/__generated__/get_profile.req.gql.dart";
import "package:graph_auth_mobile/features/profile/domain/repository/profile_repository.dart";
import "package:graph_auth_mobile/injector_container.dart";

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({
    required Client profileClient,
    required AuthRepository authRepository,
  })  : _profileClient = profileClient,
        _authRepository = authRepository;

  final Client _profileClient;
  final AuthRepository _authRepository;
  LocalSource get _localSource => sl<LocalSource>();

  @override
  Future<Either<Failure, GGetProfileData_profile>> getProfile() async {
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
      var response = await _profileClient.request(req).first;

      if (response.linkException != null) {
        final msg = response.linkException.toString();
        final isAuthError = msg.contains('401') ||
            msg.contains('Unauthorized') ||
            msg.contains('Unauthenticated');
        if (isAuthError && _localSource.refreshToken.isNotEmpty) {
          final refreshResult = await _authRepository.refreshToken();
          final refreshed = await refreshResult.fold(
            (l) async {
              await _localSource.clearAuth();
              return false;
            },
            (tokens) async {
              await _localSource.setAccessToken(tokens.$1);
              await _localSource.setRefreshToken(tokens.$2);
              final newContext = Context().withEntry(
                HttpLinkHeaders(
                  headers: {
                    'Authorization': 'Bearer ${tokens.$1}',
                  },
                ),
              );
              final retryReq = GGetProfileReq((b) => b..context = newContext);
              response = await _profileClient.request(retryReq).first;
              return true;
            },
          );
          if (!refreshed) {
            return const Left(
              ServerFailure(message: "Session muddati tugadi"),
            );
          }
        } else if (isAuthError) {
          await _localSource.clearAuth();
          return const Left(
            ServerFailure(message: "Session muddati tugadi"),
          );
        }
        if (response.linkException != null) {
          return Left(ServerFailure(message: msg));
        }
      }

      if (response.hasErrors &&
          response.graphqlErrors != null &&
          response.graphqlErrors!.isNotEmpty) {
        return Left(
          ServerFailure(
            message: response.graphqlErrors!.first.message,
          ),
        );
      }

      final profile = response.data?.profile;
      if (profile == null) {
        return const Left(
          ServerFailure(message: "Profile data is empty"),
        );
      }
      return Right(profile);
    } catch (e) {
      return Left(
        ServerFailure(message: e.toString()),
      );
    }
  }
}
