// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NameValue extends NameValue {
  @override
  final String? name;
  @override
  final String? value;

  factory _$NameValue([void Function(NameValueBuilder)? updates]) =>
      (new NameValueBuilder()..update(updates))._build();

  _$NameValue._({this.name, this.value}) : super._();

  @override
  NameValue rebuild(void Function(NameValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NameValueBuilder toBuilder() => new NameValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NameValue && name == other.name && value == other.value;
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
    return (newBuiltValueToStringHelper(r'NameValue')
          ..add('name', name)
          ..add('value', value))
        .toString();
  }
}

class NameValueBuilder
    implements
        Builder<NameValue, NameValueBuilder>,
        NameValue1SystemStringBuilder {
  _$NameValue? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(covariant String? value) => _$this._value = value;

  NameValueBuilder() {
    NameValue._defaults(this);
  }

  NameValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NameValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NameValue;
  }

  @override
  void update(void Function(NameValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NameValue build() => _build();

  _$NameValue _build() {
    final _$result = _$v ?? new _$NameValue._(name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
