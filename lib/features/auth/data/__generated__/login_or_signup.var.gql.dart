// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i1;

part 'login_or_signup.var.gql.g.dart';

abstract class GLoginOrSignupVars
    implements Built<GLoginOrSignupVars, GLoginOrSignupVarsBuilder> {
  GLoginOrSignupVars._();

  factory GLoginOrSignupVars(
          [void Function(GLoginOrSignupVarsBuilder b) updates]) =
      _$GLoginOrSignupVars;

  String get phone;
  String get pinCode;
  static Serializer<GLoginOrSignupVars> get serializer =>
      _$gLoginOrSignupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginOrSignupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginOrSignupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginOrSignupVars.serializer,
        json,
      );
}
