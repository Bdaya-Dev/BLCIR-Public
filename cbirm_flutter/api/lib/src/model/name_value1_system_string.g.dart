// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_value1_system_string.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class NameValue1SystemStringBuilder {
  void replace(NameValue1SystemString other);
  void update(void Function(NameValue1SystemStringBuilder) updates);
  String? get name;
  set name(String? name);

  String? get value;
  set value(String? value);
}

class _$$NameValue1SystemString extends $NameValue1SystemString {
  @override
  final String? name;
  @override
  final String? value;

  factory _$$NameValue1SystemString(
          [void Function($NameValue1SystemStringBuilder)? updates]) =>
      (new $NameValue1SystemStringBuilder()..update(updates))._build();

  _$$NameValue1SystemString._({this.name, this.value}) : super._();

  @override
  $NameValue1SystemString rebuild(
          void Function($NameValue1SystemStringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $NameValue1SystemStringBuilder toBuilder() =>
      new $NameValue1SystemStringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NameValue1SystemString &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$NameValue1SystemString')
          ..add('name', name)
          ..add('value', value))
        .toString();
  }
}

class $NameValue1SystemStringBuilder
    implements
        Builder<$NameValue1SystemString, $NameValue1SystemStringBuilder>,
        NameValue1SystemStringBuilder {
  _$$NameValue1SystemString? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(covariant String? value) => _$this._value = value;

  $NameValue1SystemStringBuilder() {
    $NameValue1SystemString._defaults(this);
  }

  $NameValue1SystemStringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NameValue1SystemString other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$NameValue1SystemString;
  }

  @override
  void update(void Function($NameValue1SystemStringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NameValue1SystemString build() => _build();

  _$$NameValue1SystemString _build() {
    final _$result =
        _$v ?? new _$$NameValue1SystemString._(name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
