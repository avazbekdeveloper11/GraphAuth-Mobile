// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSendOtpData> _$gSendOtpDataSerializer = _$GSendOtpDataSerializer();
Serializer<GSendOtpData_otp> _$gSendOtpDataOtpSerializer =
    _$GSendOtpData_otpSerializer();

class _$GSendOtpDataSerializer implements StructuredSerializer<GSendOtpData> {
  @override
  final Iterable<Type> types = const [GSendOtpData, _$GSendOtpData];
  @override
  final String wireName = 'GSendOtpData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSendOtpData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'otp',
      serializers.serialize(object.otp,
          specifiedType: const FullType(GSendOtpData_otp)),
    ];

    return result;
  }

  @override
  GSendOtpData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GSendOtpDataBuilder();

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
        case 'otp':
          result.otp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSendOtpData_otp))!
              as GSendOtpData_otp);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendOtpData_otpSerializer
    implements StructuredSerializer<GSendOtpData_otp> {
  @override
  final Iterable<Type> types = const [GSendOtpData_otp, _$GSendOtpData_otp];
  @override
  final String wireName = 'GSendOtpData_otp';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSendOtpData_otp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createForPhone',
      serializers.serialize(object.createForPhone,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GSendOtpData_otp deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GSendOtpData_otpBuilder();

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
        case 'createForPhone':
          result.createForPhone = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GSendOtpData extends GSendOtpData {
  @override
  final String G__typename;
  @override
  final GSendOtpData_otp otp;

  factory _$GSendOtpData([void Function(GSendOtpDataBuilder)? updates]) =>
      (GSendOtpDataBuilder()..update(updates))._build();

  _$GSendOtpData._({required this.G__typename, required this.otp}) : super._();
  @override
  GSendOtpData rebuild(void Function(GSendOtpDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendOtpDataBuilder toBuilder() => GSendOtpDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendOtpData &&
        G__typename == other.G__typename &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendOtpData')
          ..add('G__typename', G__typename)
          ..add('otp', otp))
        .toString();
  }
}

class GSendOtpDataBuilder
    implements Builder<GSendOtpData, GSendOtpDataBuilder> {
  _$GSendOtpData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSendOtpData_otpBuilder? _otp;
  GSendOtpData_otpBuilder get otp => _$this._otp ??= GSendOtpData_otpBuilder();
  set otp(GSendOtpData_otpBuilder? otp) => _$this._otp = otp;

  GSendOtpDataBuilder() {
    GSendOtpData._initializeBuilder(this);
  }

  GSendOtpDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _otp = $v.otp.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendOtpData other) {
    _$v = other as _$GSendOtpData;
  }

  @override
  void update(void Function(GSendOtpDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendOtpData build() => _build();

  _$GSendOtpData _build() {
    _$GSendOtpData _$result;
    try {
      _$result = _$v ??
          _$GSendOtpData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSendOtpData', 'G__typename'),
            otp: otp.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'otp';
        otp.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GSendOtpData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendOtpData_otp extends GSendOtpData_otp {
  @override
  final String G__typename;
  @override
  final bool createForPhone;

  factory _$GSendOtpData_otp(
          [void Function(GSendOtpData_otpBuilder)? updates]) =>
      (GSendOtpData_otpBuilder()..update(updates))._build();

  _$GSendOtpData_otp._(
      {required this.G__typename, required this.createForPhone})
      : super._();
  @override
  GSendOtpData_otp rebuild(void Function(GSendOtpData_otpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendOtpData_otpBuilder toBuilder() =>
      GSendOtpData_otpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendOtpData_otp &&
        G__typename == other.G__typename &&
        createForPhone == other.createForPhone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createForPhone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendOtpData_otp')
          ..add('G__typename', G__typename)
          ..add('createForPhone', createForPhone))
        .toString();
  }
}

class GSendOtpData_otpBuilder
    implements Builder<GSendOtpData_otp, GSendOtpData_otpBuilder> {
  _$GSendOtpData_otp? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _createForPhone;
  bool? get createForPhone => _$this._createForPhone;
  set createForPhone(bool? createForPhone) =>
      _$this._createForPhone = createForPhone;

  GSendOtpData_otpBuilder() {
    GSendOtpData_otp._initializeBuilder(this);
  }

  GSendOtpData_otpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createForPhone = $v.createForPhone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendOtpData_otp other) {
    _$v = other as _$GSendOtpData_otp;
  }

  @override
  void update(void Function(GSendOtpData_otpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendOtpData_otp build() => _build();

  _$GSendOtpData_otp _build() {
    final _$result = _$v ??
        _$GSendOtpData_otp._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GSendOtpData_otp', 'G__typename'),
          createForPhone: BuiltValueNullFieldError.checkNotNull(
              createForPhone, r'GSendOtpData_otp', 'createForPhone'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
