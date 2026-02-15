// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSendOtpVars> _$gSendOtpVarsSerializer = _$GSendOtpVarsSerializer();

class _$GSendOtpVarsSerializer implements StructuredSerializer<GSendOtpVars> {
  @override
  final Iterable<Type> types = const [GSendOtpVars, _$GSendOtpVars];
  @override
  final String wireName = 'GSendOtpVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSendOtpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSendOtpVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GSendOtpVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSendOtpVars extends GSendOtpVars {
  @override
  final String phone;

  factory _$GSendOtpVars([void Function(GSendOtpVarsBuilder)? updates]) =>
      (GSendOtpVarsBuilder()..update(updates))._build();

  _$GSendOtpVars._({required this.phone}) : super._();
  @override
  GSendOtpVars rebuild(void Function(GSendOtpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendOtpVarsBuilder toBuilder() => GSendOtpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendOtpVars && phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendOtpVars')..add('phone', phone))
        .toString();
  }
}

class GSendOtpVarsBuilder
    implements Builder<GSendOtpVars, GSendOtpVarsBuilder> {
  _$GSendOtpVars? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  GSendOtpVarsBuilder();

  GSendOtpVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendOtpVars other) {
    _$v = other as _$GSendOtpVars;
  }

  @override
  void update(void Function(GSendOtpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendOtpVars build() => _build();

  _$GSendOtpVars _build() {
    final _$result = _$v ??
        _$GSendOtpVars._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'GSendOtpVars', 'phone'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
