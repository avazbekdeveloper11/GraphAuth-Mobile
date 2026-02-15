// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i6;
import 'package:graph_auth_mobile/features/auth/data/__generated__/send_otp.ast.gql.dart'
    as _i5;
import 'package:graph_auth_mobile/features/auth/data/__generated__/send_otp.data.gql.dart'
    as _i2;
import 'package:graph_auth_mobile/features/auth/data/__generated__/send_otp.var.gql.dart'
    as _i3;

part 'send_otp.req.gql.g.dart';

abstract class GSendOtpReq
    implements
        Built<GSendOtpReq, GSendOtpReqBuilder>,
        _i1.OperationRequest<_i2.GSendOtpData, _i3.GSendOtpVars> {
  GSendOtpReq._();

  factory GSendOtpReq([void Function(GSendOtpReqBuilder b) updates]) =
      _$GSendOtpReq;

  static void _initializeBuilder(GSendOtpReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SendOtp',
    )
    ..executeOnListen = true;

  @override
  _i3.GSendOtpVars get vars;
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
  _i2.GSendOtpData? Function(
    _i2.GSendOtpData?,
    _i2.GSendOtpData?,
  )? get updateResult;
  @override
  _i2.GSendOtpData? get optimisticResponse;
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
  _i2.GSendOtpData? parseData(Map<String, dynamic> json) =>
      _i2.GSendOtpData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSendOtpData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GSendOtpData, _i3.GSendOtpVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSendOtpReq> get serializer => _$gSendOtpReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSendOtpReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendOtpReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSendOtpReq.serializer,
        json,
      );
}
