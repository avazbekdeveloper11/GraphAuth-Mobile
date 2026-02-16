import "package:graph_auth_mobile/core/either/either.dart";
import "package:graph_auth_mobile/core/error/failure.dart";

abstract class AuthRepository {
  const AuthRepository();

  Future<Either<Failure, String>> getAnonymousToken();

  Future<Either<Failure, bool>> sendOtp({
    required String phone,
    required String anonymousToken,
  });

  Future<Either<Failure, (String accessToken, String refreshToken)>>
      loginOrSignup({
    required String phone,
    required String pinCode,
  });

  Future<Either<Failure, (String accessToken, String refreshToken)>>
      refreshToken();
}
