// ignore_for_file: avoid_types_as_parameter_names

import "package:graph_auth_mobile/core/either/either.dart";
import "package:graph_auth_mobile/core/error/failure.dart";

abstract class UseCase<Type, Params> {
  const UseCase();

  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
