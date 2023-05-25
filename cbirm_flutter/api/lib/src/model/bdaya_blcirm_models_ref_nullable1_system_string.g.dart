// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_models_ref_nullable1_system_string.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMModelsRefNullable1SystemString
    extends BdayaBLCIRMModelsRefNullable1SystemString {
  @override
  final bool? hasValue;
  @override
  final String? value;

  factory _$BdayaBLCIRMModelsRefNullable1SystemString(
          [void Function(BdayaBLCIRMModelsRefNullable1SystemStringBuilder)?
              updates]) =>
      (new BdayaBLCIRMModelsRefNullable1SystemStringBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMModelsRefNullable1SystemString._({this.hasValue, this.value})
      : super._();

  @override
  BdayaBLCIRMModelsRefNullable1SystemString rebuild(
          void Function(BdayaBLCIRMModelsRefNullable1SystemStringBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMModelsRefNullable1SystemStringBuilder toBuilder() =>
      new BdayaBLCIRMModelsRefNullable1SystemStringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMModelsRefNullable1SystemString &&
        hasValue == other.hasValue &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hasValue.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMModelsRefNullable1SystemString')
          ..add('hasValue', hasValue)
          ..add('value', value))
        .toString();
  }
}

class BdayaBLCIRMModelsRefNullable1SystemStringBuilder
    implements
        Builder<BdayaBLCIRMModelsRefNullable1SystemString,
            BdayaBLCIRMModelsRefNullable1SystemStringBuilder> {
  _$BdayaBLCIRMModelsRefNullable1SystemString? _$v;

  bool? _hasValue;
  bool? get hasValue => _$this._hasValue;
  set hasValue(bool? hasValue) => _$this._hasValue = hasValue;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  BdayaBLCIRMModelsRefNullable1SystemStringBuilder() {
    BdayaBLCIRMModelsRefNullable1SystemString._defaults(this);
  }

  BdayaBLCIRMModelsRefNullable1SystemStringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hasValue = $v.hasValue;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMModelsRefNullable1SystemString other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMModelsRefNullable1SystemString;
  }

  @override
  void update(
      void Function(BdayaBLCIRMModelsRefNullable1SystemStringBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMModelsRefNullable1SystemString build() => _build();

  _$BdayaBLCIRMModelsRefNullable1SystemString _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMModelsRefNullable1SystemString._(
            hasValue: hasValue, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
