import "package:graph_auth_mobile/core/either/either.dart";
import "package:graph_auth_mobile/core/error/failure.dart";
import "package:graph_auth_mobile/features/profile/data/__generated__/get_profile.data.gql.dart";

abstract class ProfileRepository {
  const ProfileRepository();
  Future<Either<Failure, GGetProfileData_profile?>> getProfile();
}
