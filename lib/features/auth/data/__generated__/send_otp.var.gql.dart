// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i1;

part 'send_otp.var.gql.g.dart';

abstract class GSendOtpVars
    implements Built<GSendOtpVars, GSendOtpVarsBuilder> {
  GSendOtpVars._();

  factory GSendOtpVars([void Function(GSendOtpVarsBuilder b) updates]) =
      _$GSendOtpVars;

  String get phone;
  static Serializer<GSendOtpVars> get serializer => _$gSendOtpVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendOtpVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendOtpVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendOtpVars.serializer,
        json,
      );
}
