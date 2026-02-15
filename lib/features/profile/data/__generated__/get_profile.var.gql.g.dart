// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetProfileVars> _$gGetProfileVarsSerializer =
    _$GGetProfileVarsSerializer();

class _$GGetProfileVarsSerializer
    implements StructuredSerializer<GGetProfileVars> {
  @override
  final Iterable<Type> types = const [GGetProfileVars, _$GGetProfileVars];
  @override
  final String wireName = 'GGetProfileVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetProfileVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetProfileVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GGetProfileVarsBuilder().build();
  }
}

class _$GGetProfileVars extends GGetProfileVars {
  factory _$GGetProfileVars([void Function(GGetProfileVarsBuilder)? updates]) =>
      (GGetProfileVarsBuilder()..update(updates))._build();

  _$GGetProfileVars._() : super._();
  @override
  GGetProfileVars rebuild(void Function(GGetProfileVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProfileVarsBuilder toBuilder() => GGetProfileVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProfileVars;
  }

  @override
  int get hashCode {
    return 460703629;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetProfileVars').toString();
  }
}

class GGetProfileVarsBuilder
    implements Builder<GGetProfileVars, GGetProfileVarsBuilder> {
  _$GGetProfileVars? _$v;

  GGetProfileVarsBuilder();

  @override
  void replace(GGetProfileVars other) {
    _$v = other as _$GGetProfileVars;
  }

  @override
  void update(void Function(GGetProfileVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetProfileVars build() => _build();

  _$GGetProfileVars _build() {
    final _$result = _$v ?? _$GGetProfileVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
