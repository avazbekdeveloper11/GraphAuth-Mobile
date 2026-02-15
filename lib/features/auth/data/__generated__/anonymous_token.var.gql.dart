// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i1;

part 'anonymous_token.var.gql.g.dart';

abstract class GAnonymousTokenVars
    implements Built<GAnonymousTokenVars, GAnonymousTokenVarsBuilder> {
  GAnonymousTokenVars._();

  factory GAnonymousTokenVars(
          [void Function(GAnonymousTokenVarsBuilder b) updates]) =
      _$GAnonymousTokenVars;

  static Serializer<GAnonymousTokenVars> get serializer =>
      _$gAnonymousTokenVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnonymousTokenVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnonymousTokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnonymousTokenVars.serializer,
        json,
      );
}
