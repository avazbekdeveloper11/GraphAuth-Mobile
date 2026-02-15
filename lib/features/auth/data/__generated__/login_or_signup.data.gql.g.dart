// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_or_signup.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginOrSignupData> _$gLoginOrSignupDataSerializer =
    _$GLoginOrSignupDataSerializer();
Serializer<GLoginOrSignupData_loginOrSignup>
    _$gLoginOrSignupDataLoginOrSignupSerializer =
    _$GLoginOrSignupData_loginOrSignupSerializer();

class _$GLoginOrSignupDataSerializer
    implements StructuredSerializer<GLoginOrSignupData> {
  @override
  final Iterable<Type> types = const [GLoginOrSignupData, _$GLoginOrSignupData];
  @override
  final String wireName = 'GLoginOrSignupData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginOrSignupData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.loginOrSignup;
    if (value != null) {
      result
        ..add('loginOrSignup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLoginOrSignupData_loginOrSignup)));
    }
    return result;
  }

  @override
  GLoginOrSignupData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GLoginOrSignupDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'loginOrSignup':
          result.loginOrSignup.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GLoginOrSignupData_loginOrSignup))!
              as GLoginOrSignupData_loginOrSignup);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginOrSignupData_loginOrSignupSerializer
    implements StructuredSerializer<GLoginOrSignupData_loginOrSignup> {
  @override
  final Iterable<Type> types = const [
    GLoginOrSignupData_loginOrSignup,
    _$GLoginOrSignupData_loginOrSignup
  ];
  @override
  final String wireName = 'GLoginOrSignupData_loginOrSignup';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginOrSignupData_loginOrSignup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginOrSignupData_loginOrSignup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GLoginOrSignupData_loginOrSignupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginOrSignupData extends GLoginOrSignupData {
  @override
  final String G__typename;
  @override
  final GLoginOrSignupData_loginOrSignup? loginOrSignup;

  factory _$GLoginOrSignupData(
          [void Function(GLoginOrSignupDataBuilder)? updates]) =>
      (GLoginOrSignupDataBuilder()..update(updates))._build();

  _$GLoginOrSignupData._({required this.G__typename, this.loginOrSignup})
      : super._();
  @override
  GLoginOrSignupData rebuild(
          void Function(GLoginOrSignupDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginOrSignupDataBuilder toBuilder() =>
      GLoginOrSignupDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginOrSignupData &&
        G__typename == other.G__typename &&
        loginOrSignup == other.loginOrSignup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, loginOrSignup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginOrSignupData')
          ..add('G__typename', G__typename)
          ..add('loginOrSignup', loginOrSignup))
        .toString();
  }
}

class GLoginOrSignupDataBuilder
    implements Builder<GLoginOrSignupData, GLoginOrSignupDataBuilder> {
  _$GLoginOrSignupData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoginOrSignupData_loginOrSignupBuilder? _loginOrSignup;
  GLoginOrSignupData_loginOrSignupBuilder get loginOrSignup =>
      _$this._loginOrSignup ??= GLoginOrSignupData_loginOrSignupBuilder();
  set loginOrSignup(GLoginOrSignupData_loginOrSignupBuilder? loginOrSignup) =>
      _$this._loginOrSignup = loginOrSignup;

  GLoginOrSignupDataBuilder() {
    GLoginOrSignupData._initializeBuilder(this);
  }

  GLoginOrSignupDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _loginOrSignup = $v.loginOrSignup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginOrSignupData other) {
    _$v = other as _$GLoginOrSignupData;
  }

  @override
  void update(void Function(GLoginOrSignupDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginOrSignupData build() => _build();

  _$GLoginOrSignupData _build() {
    _$GLoginOrSignupData _$result;
    try {
      _$result = _$v ??
          _$GLoginOrSignupData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLoginOrSignupData', 'G__typename'),
            loginOrSignup: _loginOrSignup?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loginOrSignup';
        _loginOrSignup?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GLoginOrSignupData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginOrSignupData_loginOrSignup
    extends GLoginOrSignupData_loginOrSignup {
  @override
  final String G__typename;
  @override
  final String token;
  @override
  final String refreshToken;

  factory _$GLoginOrSignupData_loginOrSignup(
          [void Function(GLoginOrSignupData_loginOrSignupBuilder)? updates]) =>
      (GLoginOrSignupData_loginOrSignupBuilder()..update(updates))._build();

  _$GLoginOrSignupData_loginOrSignup._(
      {required this.G__typename,
      required this.token,
      required this.refreshToken})
      : super._();
  @override
  GLoginOrSignupData_loginOrSignup rebuild(
          void Function(GLoginOrSignupData_loginOrSignupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginOrSignupData_loginOrSignupBuilder toBuilder() =>
      GLoginOrSignupData_loginOrSignupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginOrSignupData_loginOrSignup &&
        G__typename == other.G__typename &&
        token == other.token &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginOrSignupData_loginOrSignup')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GLoginOrSignupData_loginOrSignupBuilder
    implements
        Builder<GLoginOrSignupData_loginOrSignup,
            GLoginOrSignupData_loginOrSignupBuilder> {
  _$GLoginOrSignupData_loginOrSignup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  GLoginOrSignupData_loginOrSignupBuilder() {
    GLoginOrSignupData_loginOrSignup._initializeBuilder(this);
  }

  GLoginOrSignupData_loginOrSignupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginOrSignupData_loginOrSignup other) {
    _$v = other as _$GLoginOrSignupData_loginOrSignup;
  }

  @override
  void update(void Function(GLoginOrSignupData_loginOrSignupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginOrSignupData_loginOrSignup build() => _build();

  _$GLoginOrSignupData_loginOrSignup _build() {
    final _$result = _$v ??
        _$GLoginOrSignupData_loginOrSignup._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GLoginOrSignupData_loginOrSignup', 'G__typename'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'GLoginOrSignupData_loginOrSignup', 'token'),
          refreshToken: BuiltValueNullFieldError.checkNotNull(refreshToken,
              r'GLoginOrSignupData_loginOrSignup', 'refreshToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
