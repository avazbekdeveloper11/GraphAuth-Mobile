import "dart:developer";

import "package:ferry/ferry.dart";
import "package:gql_exec/gql_exec.dart";
import "package:graph_auth_mobile/core/either/either.dart";
import "package:graph_auth_mobile/core/error/failure.dart";
import "package:graph_auth_mobile/core/local_source/local_source.dart";
import "package:graph_auth_mobile/features/auth/domain/repository/auth_repository.dart";
import "package:graph_auth_mobile/features/auth/data/__generated__/anonymous_token.req.gql.dart";
import "package:graph_auth_mobile/features/auth/data/__generated__/login_or_signup.req.gql.dart";
import "package:graph_auth_mobile/features/auth/data/__generated__/send_otp.req.gql.dart";
import "package:graph_auth_mobile/injector_container.dart";

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required Client authClient}) : _authClient = authClient;

  final Client _authClient;
  LocalSource get _localSource => sl<LocalSource>();

  @override
  Future<Either<Failure, String>> getAnonymousToken() async {
    try {
      final response = await _authClient.request(GAnonymousTokenReq()).first;
      final errors = response.graphqlErrors;
      if (errors != null && errors.isNotEmpty) {
        return Left(ServerFailure(message: errors.first.message));
      }
      final data = response.data?.anonymousToken;
      if (data == null) {
        return Left(const ServerFailure(message: "No anonymous token"));
      }
      await _localSource.setAnonymousToken(data.token);
      return Right(data.token);
    } catch (e, st) {
      log("getAnonymousToken error: $e", stackTrace: st);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> sendOtp({
    required String phone,
    required String anonymousToken,
  }) async {
    try {
      final context = Context().withEntry(
        HttpLinkHeaders(
          headers: {
            'Authorization': 'Bearer $anonymousToken',
          },
        ),
      );

      final req = GSendOtpReq((b) => b
        ..vars.phone = phone
        ..context = context);

      final response = await _authClient.request(req).first;

      if (response.hasErrors) {
        final message = response.graphqlErrors?.first.message ?? 'Server error';
        return Left(ServerFailure(message: message));
      }

      final data = response.data;
      if (data == null) {
        return Left(ServerFailure(message: 'Empty response'));
      }

      final result = data.otp.createForPhone;

      return Right(result);
    } catch (e, st) {
      log('sendOtp error: $e', stackTrace: st);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, (String, String)>> loginOrSignup({
    required String phone,
    required String pinCode,
  }) async {
    try {
      final anon = _localSource.anonymousToken;

      if (anon.isEmpty) {
        return const Left(
          ServerFailure(
            message: "Anonymous token required. Request OTP first.",
          ),
        );
      }

      final context = Context().withEntry(
        HttpLinkHeaders(
          headers: {
            'Authorization': 'Bearer $anon',
          },
        ),
      );

      final req = GLoginOrSignupReq((b) => b
        ..vars.phone = phone
        ..vars.pinCode = pinCode
        ..context = context);

      final response = await _authClient.request(req).first;

      if (response.hasErrors) {
        return Left(
          ServerFailure(
            message: response.graphqlErrors?.first.message ?? "GraphQL error",
          ),
        );
      }

      final tokenData = response.data?.loginOrSignup;

      if (tokenData == null) {
        return const Left(
          ServerFailure(message: "Invalid token response"),
        );
      }

      return Right((tokenData.token, tokenData.refreshToken));
    } catch (e, st) {
      log(
        "loginOrSignup error",
        error: e,
        stackTrace: st,
      );

      return Left(
        ServerFailure(message: "Login failed. Please try again."),
      );
    }
  }
}
