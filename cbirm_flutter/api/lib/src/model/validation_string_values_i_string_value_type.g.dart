// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_string_values_i_string_value_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationStringValuesIStringValueType
    extends ValidationStringValuesIStringValueType {
  @override
  final String? name;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final ValidationStringValuesIValueValidator? validator;

  factory _$ValidationStringValuesIStringValueType(
          [void Function(ValidationStringValuesIStringValueTypeBuilder)?
              updates]) =>
      (new ValidationStringValuesIStringValueTypeBuilder()..update(updates))
          ._build();

  _$ValidationStringValuesIStringValueType._(
      {this.name, this.properties, this.validator})
      : super._();

  @override
  ValidationStringValuesIStringValueType rebuild(
          void Function(ValidationStringValuesIStringValueTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationStringValuesIStringValueTypeBuilder toBuilder() =>
      new ValidationStringValuesIStringValueTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationStringValuesIStringValueType &&
        name == other.name &&
        properties == other.properties &&
        validator == other.validator;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, validator.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ValidationStringValuesIStringValueType')
          ..add('name', name)
          ..add('properties', properties)
          ..add('validator', validator))
        .toString();
  }
}

class ValidationStringValuesIStringValueTypeBuilder
    implements
        Builder<ValidationStringValuesIStringValueType,
            ValidationStringValuesIStringValueTypeBuilder> {
  _$ValidationStringValuesIStringValueType? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= new MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  ValidationStringValuesIValueValidatorBuilder? _validator;
  ValidationStringValuesIValueValidatorBuilder get validator =>
      _$this._validator ??= new ValidationStringValuesIValueValidatorBuilder();
  set validator(ValidationStringValuesIValueValidatorBuilder? validator) =>
      _$this._validator = validator;

  ValidationStringValuesIStringValueTypeBuilder() {
    ValidationStringValuesIStringValueType._defaults(this);
  }

  ValidationStringValuesIStringValueTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _properties = $v.properties?.toBuilder();
      _validator = $v.validator?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationStringValuesIStringValueType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidationStringValuesIStringValueType;
  }

  @override
  void update(
      void Function(ValidationStringValuesIStringValueTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationStringValuesIStringValueType build() => _build();

  _$ValidationStringValuesIStringValueType _build() {
    _$ValidationStringValuesIStringValueType _$result;
    try {
      _$result = _$v ??
          new _$ValidationStringValuesIStringValueType._(
              name: name,
              properties: _properties?.build(),
              validator: _validator?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
        _$failedField = 'validator';
        _validator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ValidationStringValuesIStringValueType',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
