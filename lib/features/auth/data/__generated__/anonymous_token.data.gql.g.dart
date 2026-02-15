// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anonymous_token.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAnonymousTokenData> _$gAnonymousTokenDataSerializer =
    _$GAnonymousTokenDataSerializer();
Serializer<GAnonymousTokenData_anonymousToken>
    _$gAnonymousTokenDataAnonymousTokenSerializer =
    _$GAnonymousTokenData_anonymousTokenSerializer();

class _$GAnonymousTokenDataSerializer
    implements StructuredSerializer<GAnonymousTokenData> {
  @override
  final Iterable<Type> types = const [
    GAnonymousTokenData,
    _$GAnonymousTokenData
  ];
  @override
  final String wireName = 'GAnonymousTokenData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAnonymousTokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'anonymousToken',
      serializers.serialize(object.anonymousToken,
          specifiedType: const FullType(GAnonymousTokenData_anonymousToken)),
    ];

    return result;
  }

  @override
  GAnonymousTokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GAnonymousTokenDataBuilder();

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
        case 'anonymousToken':
          result.anonymousToken.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GAnonymousTokenData_anonymousToken))!
              as GAnonymousTokenData_anonymousToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GAnonymousTokenData_anonymousTokenSerializer
    implements StructuredSerializer<GAnonymousTokenData_anonymousToken> {
  @override
  final Iterable<Type> types = const [
    GAnonymousTokenData_anonymousToken,
    _$GAnonymousTokenData_anonymousToken
  ];
  @override
  final String wireName = 'GAnonymousTokenData_anonymousToken';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAnonymousTokenData_anonymousToken object,
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
  GAnonymousTokenData_anonymousToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GAnonymousTokenData_anonymousTokenBuilder();

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

class _$GAnonymousTokenData extends GAnonymousTokenData {
  @override
  final String G__typename;
  @override
  final GAnonymousTokenData_anonymousToken anonymousToken;

  factory _$GAnonymousTokenData(
          [void Function(GAnonymousTokenDataBuilder)? updates]) =>
      (GAnonymousTokenDataBuilder()..update(updates))._build();

  _$GAnonymousTokenData._(
      {required this.G__typename, required this.anonymousToken})
      : super._();
  @override
  GAnonymousTokenData rebuild(
          void Function(GAnonymousTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAnonymousTokenDataBuilder toBuilder() =>
      GAnonymousTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnonymousTokenData &&
        G__typename == other.G__typename &&
        anonymousToken == other.anonymousToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, anonymousToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnonymousTokenData')
          ..add('G__typename', G__typename)
          ..add('anonymousToken', anonymousToken))
        .toString();
  }
}

class GAnonymousTokenDataBuilder
    implements Builder<GAnonymousTokenData, GAnonymousTokenDataBuilder> {
  _$GAnonymousTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAnonymousTokenData_anonymousTokenBuilder? _anonymousToken;
  GAnonymousTokenData_anonymousTokenBuilder get anonymousToken =>
      _$this._anonymousToken ??= GAnonymousTokenData_anonymousTokenBuilder();
  set anonymousToken(
          GAnonymousTokenData_anonymousTokenBuilder? anonymousToken) =>
      _$this._anonymousToken = anonymousToken;

  GAnonymousTokenDataBuilder() {
    GAnonymousTokenData._initializeBuilder(this);
  }

  GAnonymousTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _anonymousToken = $v.anonymousToken.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnonymousTokenData other) {
    _$v = other as _$GAnonymousTokenData;
  }

  @override
  void update(void Function(GAnonymousTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnonymousTokenData build() => _build();

  _$GAnonymousTokenData _build() {
    _$GAnonymousTokenData _$result;
    try {
      _$result = _$v ??
          _$GAnonymousTokenData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GAnonymousTokenData', 'G__typename'),
            anonymousToken: anonymousToken.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anonymousToken';
        anonymousToken.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GAnonymousTokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAnonymousTokenData_anonymousToken
    extends GAnonymousTokenData_anonymousToken {
  @override
  final String G__typename;
  @override
  final String token;
  @override
  final String refreshToken;

  factory _$GAnonymousTokenData_anonymousToken(
          [void Function(GAnonymousTokenData_anonymousTokenBuilder)?
              updates]) =>
      (GAnonymousTokenData_anonymousTokenBuilder()..update(updates))._build();

  _$GAnonymousTokenData_anonymousToken._(
      {required this.G__typename,
      required this.token,
      required this.refreshToken})
      : super._();
  @override
  GAnonymousTokenData_anonymousToken rebuild(
          void Function(GAnonymousTokenData_anonymousTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAnonymousTokenData_anonymousTokenBuilder toBuilder() =>
      GAnonymousTokenData_anonymousTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnonymousTokenData_anonymousToken &&
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
    return (newBuiltValueToStringHelper(r'GAnonymousTokenData_anonymousToken')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GAnonymousTokenData_anonymousTokenBuilder
    implements
        Builder<GAnonymousTokenData_anonymousToken,
            GAnonymousTokenData_anonymousTokenBuilder> {
  _$GAnonymousTokenData_anonymousToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  GAnonymousTokenData_anonymousTokenBuilder() {
    GAnonymousTokenData_anonymousToken._initializeBuilder(this);
  }

  GAnonymousTokenData_anonymousTokenBuilder get _$this {
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
  void replace(GAnonymousTokenData_anonymousToken other) {
    _$v = other as _$GAnonymousTokenData_anonymousToken;
  }

  @override
  void update(
      void Function(GAnonymousTokenData_anonymousTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnonymousTokenData_anonymousToken build() => _build();

  _$GAnonymousTokenData_anonymousToken _build() {
    final _$result = _$v ??
        _$GAnonymousTokenData_anonymousToken._(
          G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
              r'GAnonymousTokenData_anonymousToken', 'G__typename'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'GAnonymousTokenData_anonymousToken', 'token'),
          refreshToken: BuiltValueNullFieldError.checkNotNull(refreshToken,
              r'GAnonymousTokenData_anonymousToken', 'refreshToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
