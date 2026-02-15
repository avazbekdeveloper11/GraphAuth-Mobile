// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anonymous_token.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAnonymousTokenVars> _$gAnonymousTokenVarsSerializer =
    _$GAnonymousTokenVarsSerializer();

class _$GAnonymousTokenVarsSerializer
    implements StructuredSerializer<GAnonymousTokenVars> {
  @override
  final Iterable<Type> types = const [
    GAnonymousTokenVars,
    _$GAnonymousTokenVars
  ];
  @override
  final String wireName = 'GAnonymousTokenVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAnonymousTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAnonymousTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GAnonymousTokenVarsBuilder().build();
  }
}

class _$GAnonymousTokenVars extends GAnonymousTokenVars {
  factory _$GAnonymousTokenVars(
          [void Function(GAnonymousTokenVarsBuilder)? updates]) =>
      (GAnonymousTokenVarsBuilder()..update(updates))._build();

  _$GAnonymousTokenVars._() : super._();
  @override
  GAnonymousTokenVars rebuild(
          void Function(GAnonymousTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAnonymousTokenVarsBuilder toBuilder() =>
      GAnonymousTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnonymousTokenVars;
  }

  @override
  int get hashCode {
    return 170674089;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GAnonymousTokenVars').toString();
  }
}

class GAnonymousTokenVarsBuilder
    implements Builder<GAnonymousTokenVars, GAnonymousTokenVarsBuilder> {
  _$GAnonymousTokenVars? _$v;

  GAnonymousTokenVarsBuilder();

  @override
  void replace(GAnonymousTokenVars other) {
    _$v = other as _$GAnonymousTokenVars;
  }

  @override
  void update(void Function(GAnonymousTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnonymousTokenVars build() => _build();

  _$GAnonymousTokenVars _build() {
    final _$result = _$v ?? _$GAnonymousTokenVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
