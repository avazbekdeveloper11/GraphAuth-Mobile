// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_or_signup.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginOrSignupVars> _$gLoginOrSignupVarsSerializer =
    _$GLoginOrSignupVarsSerializer();

class _$GLoginOrSignupVarsSerializer
    implements StructuredSerializer<GLoginOrSignupVars> {
  @override
  final Iterable<Type> types = const [GLoginOrSignupVars, _$GLoginOrSignupVars];
  @override
  final String wireName = 'GLoginOrSignupVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginOrSignupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'pinCode',
      serializers.serialize(object.pinCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginOrSignupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GLoginOrSignupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginOrSignupVars extends GLoginOrSignupVars {
  @override
  final String phone;
  @override
  final String pinCode;

  factory _$GLoginOrSignupVars(
          [void Function(GLoginOrSignupVarsBuilder)? updates]) =>
      (GLoginOrSignupVarsBuilder()..update(updates))._build();

  _$GLoginOrSignupVars._({required this.phone, required this.pinCode})
      : super._();
  @override
  GLoginOrSignupVars rebuild(
          void Function(GLoginOrSignupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginOrSignupVarsBuilder toBuilder() =>
      GLoginOrSignupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginOrSignupVars &&
        phone == other.phone &&
        pinCode == other.pinCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, pinCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginOrSignupVars')
          ..add('phone', phone)
          ..add('pinCode', pinCode))
        .toString();
  }
}

class GLoginOrSignupVarsBuilder
    implements Builder<GLoginOrSignupVars, GLoginOrSignupVarsBuilder> {
  _$GLoginOrSignupVars? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _pinCode;
  String? get pinCode => _$this._pinCode;
  set pinCode(String? pinCode) => _$this._pinCode = pinCode;

  GLoginOrSignupVarsBuilder();

  GLoginOrSignupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _pinCode = $v.pinCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginOrSignupVars other) {
    _$v = other as _$GLoginOrSignupVars;
  }

  @override
  void update(void Function(GLoginOrSignupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginOrSignupVars build() => _build();

  _$GLoginOrSignupVars _build() {
    final _$result = _$v ??
        _$GLoginOrSignupVars._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'GLoginOrSignupVars', 'phone'),
          pinCode: BuiltValueNullFieldError.checkNotNull(
              pinCode, r'GLoginOrSignupVars', 'pinCode'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
