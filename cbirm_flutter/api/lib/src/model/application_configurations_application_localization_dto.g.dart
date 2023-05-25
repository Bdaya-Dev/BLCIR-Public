// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_application_localization_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsApplicationLocalizationDto
    extends ApplicationConfigurationsApplicationLocalizationDto {
  @override
  final BuiltMap<String,
      ApplicationConfigurationsApplicationLocalizationResourceDto>? resources;

  factory _$ApplicationConfigurationsApplicationLocalizationDto(
          [void Function(
                  ApplicationConfigurationsApplicationLocalizationDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsApplicationLocalizationDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsApplicationLocalizationDto._({this.resources})
      : super._();

  @override
  ApplicationConfigurationsApplicationLocalizationDto rebuild(
          void Function(
                  ApplicationConfigurationsApplicationLocalizationDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsApplicationLocalizationDtoBuilder toBuilder() =>
      new ApplicationConfigurationsApplicationLocalizationDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsApplicationLocalizationDto &&
        resources == other.resources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsApplicationLocalizationDto')
          ..add('resources', resources))
        .toString();
  }
}

class ApplicationConfigurationsApplicationLocalizationDtoBuilder
    implements
        Builder<ApplicationConfigurationsApplicationLocalizationDto,
            ApplicationConfigurationsApplicationLocalizationDtoBuilder> {
  _$ApplicationConfigurationsApplicationLocalizationDto? _$v;

  MapBuilder<String,
      ApplicationConfigurationsApplicationLocalizationResourceDto>? _resources;
  MapBuilder<String,
          ApplicationConfigurationsApplicationLocalizationResourceDto>
      get resources => _$this._resources ??= new MapBuilder<String,
          ApplicationConfigurationsApplicationLocalizationResourceDto>();
  set resources(
          MapBuilder<String,
                  ApplicationConfigurationsApplicationLocalizationResourceDto>?
              resources) =>
      _$this._resources = resources;

  ApplicationConfigurationsApplicationLocalizationDtoBuilder() {
    ApplicationConfigurationsApplicationLocalizationDto._defaults(this);
  }

  ApplicationConfigurationsApplicationLocalizationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resources = $v.resources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsApplicationLocalizationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsApplicationLocalizationDto;
  }

  @override
  void update(
      void Function(ApplicationConfigurationsApplicationLocalizationDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsApplicationLocalizationDto build() => _build();

  _$ApplicationConfigurationsApplicationLocalizationDto _build() {
    _$ApplicationConfigurationsApplicationLocalizationDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsApplicationLocalizationDto._(
              resources: _resources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsApplicationLocalizationDto',
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
