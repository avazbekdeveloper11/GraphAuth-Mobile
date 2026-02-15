// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i6;
import 'package:graph_auth_mobile/features/auth/data/__generated__/login_or_signup.ast.gql.dart'
    as _i5;
import 'package:graph_auth_mobile/features/auth/data/__generated__/login_or_signup.data.gql.dart'
    as _i2;
import 'package:graph_auth_mobile/features/auth/data/__generated__/login_or_signup.var.gql.dart'
    as _i3;

part 'login_or_signup.req.gql.g.dart';

abstract class GLoginOrSignupReq
    implements
        Built<GLoginOrSignupReq, GLoginOrSignupReqBuilder>,
        _i1.OperationRequest<_i2.GLoginOrSignupData, _i3.GLoginOrSignupVars> {
  GLoginOrSignupReq._();

  factory GLoginOrSignupReq(
          [void Function(GLoginOrSignupReqBuilder b) updates]) =
      _$GLoginOrSignupReq;

  static void _initializeBuilder(GLoginOrSignupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'LoginOrSignup',
    )
    ..executeOnListen = true;

  @override
  _i3.GLoginOrSignupVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GLoginOrSignupData? Function(
    _i2.GLoginOrSignupData?,
    _i2.GLoginOrSignupData?,
  )? get updateResult;
  @override
  _i2.GLoginOrSignupData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GLoginOrSignupData? parseData(Map<String, dynamic> json) =>
      _i2.GLoginOrSignupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GLoginOrSignupData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GLoginOrSignupData, _i3.GLoginOrSignupVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GLoginOrSignupReq> get serializer =>
      _$gLoginOrSignupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLoginOrSignupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginOrSignupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLoginOrSignupReq.serializer,
        json,
      );
}
