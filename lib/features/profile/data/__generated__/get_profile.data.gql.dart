// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i1;

part 'get_profile.data.gql.g.dart';

abstract class GGetProfileData
    implements Built<GGetProfileData, GGetProfileDataBuilder> {
  GGetProfileData._();

  factory GGetProfileData([void Function(GGetProfileDataBuilder b) updates]) =
      _$GGetProfileData;

  static void _initializeBuilder(GGetProfileDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetProfileData_profile? get profile;
  static Serializer<GGetProfileData> get serializer =>
      _$gGetProfileDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetProfileData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetProfileData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetProfileData.serializer,
        json,
      );
}

abstract class GGetProfileData_profile
    implements Built<GGetProfileData_profile, GGetProfileData_profileBuilder> {
  GGetProfileData_profile._();

  factory GGetProfileData_profile(
          [void Function(GGetProfileData_profileBuilder b) updates]) =
      _$GGetProfileData_profile;

  static void _initializeBuilder(GGetProfileData_profileBuilder b) =>
      b..G__typename = 'ProfileResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get patronymic;
  String? get phone;
  String? get email;
  String? get imageUrl;
  String? get birthDate;
  String? get username;
  String? get addressLine;
  String? get referralCode;
  static Serializer<GGetProfileData_profile> get serializer =>
      _$gGetProfileDataProfileSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetProfileData_profile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetProfileData_profile? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetProfileData_profile.serializer,
        json,
      );
}
