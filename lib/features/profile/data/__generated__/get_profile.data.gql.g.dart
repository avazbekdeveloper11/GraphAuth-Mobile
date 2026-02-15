// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetProfileData> _$gGetProfileDataSerializer =
    _$GGetProfileDataSerializer();
Serializer<GGetProfileData_profile> _$gGetProfileDataProfileSerializer =
    _$GGetProfileData_profileSerializer();

class _$GGetProfileDataSerializer
    implements StructuredSerializer<GGetProfileData> {
  @override
  final Iterable<Type> types = const [GGetProfileData, _$GGetProfileData];
  @override
  final String wireName = 'GGetProfileData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetProfileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetProfileData_profile)));
    }
    return result;
  }

  @override
  GGetProfileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GGetProfileDataBuilder();

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
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetProfileData_profile))!
              as GGetProfileData_profile);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProfileData_profileSerializer
    implements StructuredSerializer<GGetProfileData_profile> {
  @override
  final Iterable<Type> types = const [
    GGetProfileData_profile,
    _$GGetProfileData_profile
  ];
  @override
  final String wireName = 'GGetProfileData_profile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProfileData_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patronymic;
    if (value != null) {
      result
        ..add('patronymic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birthDate;
    if (value != null) {
      result
        ..add('birthDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressLine;
    if (value != null) {
      result
        ..add('addressLine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referralCode;
    if (value != null) {
      result
        ..add('referralCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetProfileData_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GGetProfileData_profileBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'patronymic':
          result.patronymic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addressLine':
          result.addressLine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'referralCode':
          result.referralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProfileData extends GGetProfileData {
  @override
  final String G__typename;
  @override
  final GGetProfileData_profile? profile;

  factory _$GGetProfileData([void Function(GGetProfileDataBuilder)? updates]) =>
      (GGetProfileDataBuilder()..update(updates))._build();

  _$GGetProfileData._({required this.G__typename, this.profile}) : super._();
  @override
  GGetProfileData rebuild(void Function(GGetProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProfileDataBuilder toBuilder() => GGetProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProfileData &&
        G__typename == other.G__typename &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetProfileData')
          ..add('G__typename', G__typename)
          ..add('profile', profile))
        .toString();
  }
}

class GGetProfileDataBuilder
    implements Builder<GGetProfileData, GGetProfileDataBuilder> {
  _$GGetProfileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetProfileData_profileBuilder? _profile;
  GGetProfileData_profileBuilder get profile =>
      _$this._profile ??= GGetProfileData_profileBuilder();
  set profile(GGetProfileData_profileBuilder? profile) =>
      _$this._profile = profile;

  GGetProfileDataBuilder() {
    GGetProfileData._initializeBuilder(this);
  }

  GGetProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _profile = $v.profile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProfileData other) {
    _$v = other as _$GGetProfileData;
  }

  @override
  void update(void Function(GGetProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetProfileData build() => _build();

  _$GGetProfileData _build() {
    _$GGetProfileData _$result;
    try {
      _$result = _$v ??
          _$GGetProfileData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetProfileData', 'G__typename'),
            profile: _profile?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        _profile?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GGetProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProfileData_profile extends GGetProfileData_profile {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? patronymic;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? imageUrl;
  @override
  final String? birthDate;
  @override
  final String? username;
  @override
  final String? addressLine;
  @override
  final String? referralCode;

  factory _$GGetProfileData_profile(
          [void Function(GGetProfileData_profileBuilder)? updates]) =>
      (GGetProfileData_profileBuilder()..update(updates))._build();

  _$GGetProfileData_profile._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.patronymic,
      this.phone,
      this.email,
      this.imageUrl,
      this.birthDate,
      this.username,
      this.addressLine,
      this.referralCode})
      : super._();
  @override
  GGetProfileData_profile rebuild(
          void Function(GGetProfileData_profileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProfileData_profileBuilder toBuilder() =>
      GGetProfileData_profileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProfileData_profile &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        patronymic == other.patronymic &&
        phone == other.phone &&
        email == other.email &&
        imageUrl == other.imageUrl &&
        birthDate == other.birthDate &&
        username == other.username &&
        addressLine == other.addressLine &&
        referralCode == other.referralCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, patronymic.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, addressLine.hashCode);
    _$hash = $jc(_$hash, referralCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetProfileData_profile')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('patronymic', patronymic)
          ..add('phone', phone)
          ..add('email', email)
          ..add('imageUrl', imageUrl)
          ..add('birthDate', birthDate)
          ..add('username', username)
          ..add('addressLine', addressLine)
          ..add('referralCode', referralCode))
        .toString();
  }
}

class GGetProfileData_profileBuilder
    implements
        Builder<GGetProfileData_profile, GGetProfileData_profileBuilder> {
  _$GGetProfileData_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _patronymic;
  String? get patronymic => _$this._patronymic;
  set patronymic(String? patronymic) => _$this._patronymic = patronymic;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _addressLine;
  String? get addressLine => _$this._addressLine;
  set addressLine(String? addressLine) => _$this._addressLine = addressLine;

  String? _referralCode;
  String? get referralCode => _$this._referralCode;
  set referralCode(String? referralCode) => _$this._referralCode = referralCode;

  GGetProfileData_profileBuilder() {
    GGetProfileData_profile._initializeBuilder(this);
  }

  GGetProfileData_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _patronymic = $v.patronymic;
      _phone = $v.phone;
      _email = $v.email;
      _imageUrl = $v.imageUrl;
      _birthDate = $v.birthDate;
      _username = $v.username;
      _addressLine = $v.addressLine;
      _referralCode = $v.referralCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProfileData_profile other) {
    _$v = other as _$GGetProfileData_profile;
  }

  @override
  void update(void Function(GGetProfileData_profileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetProfileData_profile build() => _build();

  _$GGetProfileData_profile _build() {
    final _$result = _$v ??
        _$GGetProfileData_profile._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GGetProfileData_profile', 'G__typename'),
          firstName: firstName,
          lastName: lastName,
          patronymic: patronymic,
          phone: phone,
          email: email,
          imageUrl: imageUrl,
          birthDate: birthDate,
          username: username,
          addressLine: addressLine,
          referralCode: referralCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
