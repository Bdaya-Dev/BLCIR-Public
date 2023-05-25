// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_localizable_string_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingLocalizableStringDto
    extends ApplicationConfigurationsObjectExtendingLocalizableStringDto {
  @override
  final String? name;
  @override
  final String? resource;

  factory _$ApplicationConfigurationsObjectExtendingLocalizableStringDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingLocalizableStringDto._(
      {this.name, this.resource})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingLocalizableStringDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingLocalizableStringDto &&
        name == other.name &&
        resource == other.resource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingLocalizableStringDto')
          ..add('name', name)
          ..add('resource', resource))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingLocalizableStringDto,
            ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingLocalizableStringDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder() {
    ApplicationConfigurationsObjectExtendingLocalizableStringDto._defaults(
        this);
  }

  ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _resource = $v.resource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingLocalizableStringDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationConfigurationsObjectExtendingLocalizableStringDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingLocalizableStringDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingLocalizableStringDto _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsObjectExtendingLocalizableStringDto._(
            name: name, resource: resource);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
