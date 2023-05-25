// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_string_values_i_value_validator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationStringValuesIValueValidator
    extends ValidationStringValuesIValueValidator {
  @override
  final String? name;
  @override
  final BuiltMap<String, JsonObject?>? properties;

  factory _$ValidationStringValuesIValueValidator(
          [void Function(ValidationStringValuesIValueValidatorBuilder)?
              updates]) =>
      (new ValidationStringValuesIValueValidatorBuilder()..update(updates))
          ._build();

  _$ValidationStringValuesIValueValidator._({this.name, this.properties})
      : super._();

  @override
  ValidationStringValuesIValueValidator rebuild(
          void Function(ValidationStringValuesIValueValidatorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationStringValuesIValueValidatorBuilder toBuilder() =>
      new ValidationStringValuesIValueValidatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationStringValuesIValueValidator &&
        name == other.name &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ValidationStringValuesIValueValidator')
          ..add('name', name)
          ..add('properties', properties))
        .toString();
  }
}

class ValidationStringValuesIValueValidatorBuilder
    implements
        Builder<ValidationStringValuesIValueValidator,
            ValidationStringValuesIValueValidatorBuilder> {
  _$ValidationStringValuesIValueValidator? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= new MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  ValidationStringValuesIValueValidatorBuilder() {
    ValidationStringValuesIValueValidator._defaults(this);
  }

  ValidationStringValuesIValueValidatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _properties = $v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationStringValuesIValueValidator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidationStringValuesIValueValidator;
  }

  @override
  void update(
      void Function(ValidationStringValuesIValueValidatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationStringValuesIValueValidator build() => _build();

  _$ValidationStringValuesIValueValidator _build() {
    _$ValidationStringValuesIValueValidator _$result;
    try {
      _$result = _$v ??
          new _$ValidationStringValuesIValueValidator._(
              name: name, properties: _properties?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ValidationStringValuesIValueValidator',
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
