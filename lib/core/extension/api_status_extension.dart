import 'package:graph_auth_mobile/core/either/api_status.dart';

extension ApiStatusExtension on ApiStatus {
  bool get isInitial => this == ApiStatus.initial;
  bool get isLoading => this == ApiStatus.loading;
  bool get isError => this == ApiStatus.error;
  bool get isSuccess => this == ApiStatus.success;
  bool get isNone => this == ApiStatus.none;
}
