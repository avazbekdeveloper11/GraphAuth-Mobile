// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    show OperationSerializer;
import 'package:graph_auth_mobile/features/auth/data/__generated__/anonymous_token.data.gql.dart'
    show GAnonymousTokenData, GAnonymousTokenData_anonymousToken;
import 'package:graph_auth_mobile/features/auth/data/__generated__/anonymous_token.req.gql.dart'
    show GAnonymousTokenReq;
import 'package:graph_auth_mobile/features/auth/data/__generated__/anonymous_token.var.gql.dart'
    show GAnonymousTokenVars;
import 'package:graph_auth_mobile/features/auth/data/__generated__/login_or_signup.data.gql.dart'
    show GLoginOrSignupData, GLoginOrSignupData_loginOrSignup;
import 'package:graph_auth_mobile/features/auth/data/__generated__/login_or_signup.req.gql.dart'
    show GLoginOrSignupReq;
import 'package:graph_auth_mobile/features/auth/data/__generated__/login_or_signup.var.gql.dart'
    show GLoginOrSignupVars;
import 'package:graph_auth_mobile/features/auth/data/__generated__/refresh_token.data.gql.dart'
    show GRefreshTokenData, GRefreshTokenData_refreshToken;
import 'package:graph_auth_mobile/features/auth/data/__generated__/refresh_token.req.gql.dart'
    show GRefreshTokenReq;
import 'package:graph_auth_mobile/features/auth/data/__generated__/refresh_token.var.gql.dart'
    show GRefreshTokenVars;
import 'package:graph_auth_mobile/features/auth/data/__generated__/send_otp.data.gql.dart'
    show GSendOtpData, GSendOtpData_otp;
import 'package:graph_auth_mobile/features/auth/data/__generated__/send_otp.req.gql.dart'
    show GSendOtpReq;
import 'package:graph_auth_mobile/features/auth/data/__generated__/send_otp.var.gql.dart'
    show GSendOtpVars;
import 'package:graph_auth_mobile/features/profile/data/__generated__/get_profile.data.gql.dart'
    show GGetProfileData, GGetProfileData_profile;
import 'package:graph_auth_mobile/features/profile/data/__generated__/get_profile.req.gql.dart'
    show GGetProfileReq;
import 'package:graph_auth_mobile/features/profile/data/__generated__/get_profile.var.gql.dart'
    show GGetProfileVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAnonymousTokenData,
  GAnonymousTokenData_anonymousToken,
  GAnonymousTokenReq,
  GAnonymousTokenVars,
  GGetProfileData,
  GGetProfileData_profile,
  GGetProfileReq,
  GGetProfileVars,
  GLoginOrSignupData,
  GLoginOrSignupData_loginOrSignup,
  GLoginOrSignupReq,
  GLoginOrSignupVars,
  GRefreshTokenData,
  GRefreshTokenData_refreshToken,
  GRefreshTokenReq,
  GRefreshTokenVars,
  GSendOtpData,
  GSendOtpData_otp,
  GSendOtpReq,
  GSendOtpVars,
])
final Serializers serializers = _serializersBuilder.build();
