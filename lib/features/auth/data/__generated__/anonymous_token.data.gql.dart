// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i1;

part 'anonymous_token.data.gql.g.dart';

abstract class GAnonymousTokenData
    implements Built<GAnonymousTokenData, GAnonymousTokenDataBuilder> {
  GAnonymousTokenData._();

  factory GAnonymousTokenData(
          [void Function(GAnonymousTokenDataBuilder b) updates]) =
      _$GAnonymousTokenData;

  static void _initializeBuilder(GAnonymousTokenDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAnonymousTokenData_anonymousToken get anonymousToken;
  static Serializer<GAnonymousTokenData> get serializer =>
      _$gAnonymousTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnonymousTokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnonymousTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnonymousTokenData.serializer,
        json,
      );
}

abstract class GAnonymousTokenData_anonymousToken
    implements
        Built<GAnonymousTokenData_anonymousToken,
            GAnonymousTokenData_anonymousTokenBuilder> {
  GAnonymousTokenData_anonymousToken._();

  factory GAnonymousTokenData_anonymousToken(
      [void Function(GAnonymousTokenData_anonymousTokenBuilder b)
          updates]) = _$GAnonymousTokenData_anonymousToken;

  static void _initializeBuilder(GAnonymousTokenData_anonymousTokenBuilder b) =>
      b..G__typename = 'AnonymousToken';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  String get refreshToken;
  static Serializer<GAnonymousTokenData_anonymousToken> get serializer =>
      _$gAnonymousTokenDataAnonymousTokenSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnonymousTokenData_anonymousToken.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnonymousTokenData_anonymousToken? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnonymousTokenData_anonymousToken.serializer,
        json,
      );
}
