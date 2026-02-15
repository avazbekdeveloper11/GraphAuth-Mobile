// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i1;

part 'login_or_signup.data.gql.g.dart';

abstract class GLoginOrSignupData
    implements Built<GLoginOrSignupData, GLoginOrSignupDataBuilder> {
  GLoginOrSignupData._();

  factory GLoginOrSignupData(
          [void Function(GLoginOrSignupDataBuilder b) updates]) =
      _$GLoginOrSignupData;

  static void _initializeBuilder(GLoginOrSignupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLoginOrSignupData_loginOrSignup? get loginOrSignup;
  static Serializer<GLoginOrSignupData> get serializer =>
      _$gLoginOrSignupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginOrSignupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginOrSignupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginOrSignupData.serializer,
        json,
      );
}

abstract class GLoginOrSignupData_loginOrSignup
    implements
        Built<GLoginOrSignupData_loginOrSignup,
            GLoginOrSignupData_loginOrSignupBuilder> {
  GLoginOrSignupData_loginOrSignup._();

  factory GLoginOrSignupData_loginOrSignup(
          [void Function(GLoginOrSignupData_loginOrSignupBuilder b) updates]) =
      _$GLoginOrSignupData_loginOrSignup;

  static void _initializeBuilder(GLoginOrSignupData_loginOrSignupBuilder b) =>
      b..G__typename = 'TokenResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  String get refreshToken;
  static Serializer<GLoginOrSignupData_loginOrSignup> get serializer =>
      _$gLoginOrSignupDataLoginOrSignupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginOrSignupData_loginOrSignup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginOrSignupData_loginOrSignup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginOrSignupData_loginOrSignup.serializer,
        json,
      );
}
