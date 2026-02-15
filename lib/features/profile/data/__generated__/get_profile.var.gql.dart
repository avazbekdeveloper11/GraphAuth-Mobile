// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i1;

part 'get_profile.var.gql.g.dart';

abstract class GGetProfileVars
    implements Built<GGetProfileVars, GGetProfileVarsBuilder> {
  GGetProfileVars._();

  factory GGetProfileVars([void Function(GGetProfileVarsBuilder b) updates]) =
      _$GGetProfileVars;

  static Serializer<GGetProfileVars> get serializer =>
      _$gGetProfileVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetProfileVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetProfileVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetProfileVars.serializer,
        json,
      );
}
