// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graph_auth_mobile/__generated__/serializers.gql.dart' as _i1;

part 'send_otp.data.gql.g.dart';

abstract class GSendOtpData
    implements Built<GSendOtpData, GSendOtpDataBuilder> {
  GSendOtpData._();

  factory GSendOtpData([void Function(GSendOtpDataBuilder b) updates]) =
      _$GSendOtpData;

  static void _initializeBuilder(GSendOtpDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSendOtpData_otp get otp;
  static Serializer<GSendOtpData> get serializer => _$gSendOtpDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendOtpData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendOtpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendOtpData.serializer,
        json,
      );
}

abstract class GSendOtpData_otp
    implements Built<GSendOtpData_otp, GSendOtpData_otpBuilder> {
  GSendOtpData_otp._();

  factory GSendOtpData_otp([void Function(GSendOtpData_otpBuilder b) updates]) =
      _$GSendOtpData_otp;

  static void _initializeBuilder(GSendOtpData_otpBuilder b) =>
      b..G__typename = 'OtpMutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get createForPhone;
  static Serializer<GSendOtpData_otp> get serializer =>
      _$gSendOtpDataOtpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendOtpData_otp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendOtpData_otp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendOtpData_otp.serializer,
        json,
      );
}
