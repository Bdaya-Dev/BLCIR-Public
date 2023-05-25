// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_enum_field_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto
    extends ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto {
  @override
  final String? name;
  @override
  final JsonObject? value;

  factory _$ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto._(
      {this.name, this.value})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto &&
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
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto')
          ..add('name', name)
          ..add('value', value))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto,
            ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto._defaults(
        this);
  }

  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionEnumFieldDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto._(
            name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
