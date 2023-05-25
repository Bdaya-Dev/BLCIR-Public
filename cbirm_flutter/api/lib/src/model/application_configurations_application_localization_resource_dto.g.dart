// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_application_localization_resource_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsApplicationLocalizationResourceDto
    extends ApplicationConfigurationsApplicationLocalizationResourceDto {
  @override
  final BuiltMap<String, String?>? texts;
  @override
  final BuiltList<String>? baseResources;

  factory _$ApplicationConfigurationsApplicationLocalizationResourceDto(
          [void Function(
                  ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsApplicationLocalizationResourceDto._(
      {this.texts, this.baseResources})
      : super._();

  @override
  ApplicationConfigurationsApplicationLocalizationResourceDto rebuild(
          void Function(
                  ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsApplicationLocalizationResourceDto &&
        texts == other.texts &&
        baseResources == other.baseResources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, texts.hashCode);
    _$hash = $jc(_$hash, baseResources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsApplicationLocalizationResourceDto')
          ..add('texts', texts)
          ..add('baseResources', baseResources))
        .toString();
  }
}

class ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder
    implements
        Builder<ApplicationConfigurationsApplicationLocalizationResourceDto,
            ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder> {
  _$ApplicationConfigurationsApplicationLocalizationResourceDto? _$v;

  MapBuilder<String, String?>? _texts;
  MapBuilder<String, String?> get texts =>
      _$this._texts ??= new MapBuilder<String, String?>();
  set texts(MapBuilder<String, String?>? texts) => _$this._texts = texts;

  ListBuilder<String>? _baseResources;
  ListBuilder<String> get baseResources =>
      _$this._baseResources ??= new ListBuilder<String>();
  set baseResources(ListBuilder<String>? baseResources) =>
      _$this._baseResources = baseResources;

  ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder() {
    ApplicationConfigurationsApplicationLocalizationResourceDto._defaults(this);
  }

  ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _texts = $v.texts?.toBuilder();
      _baseResources = $v.baseResources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsApplicationLocalizationResourceDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationConfigurationsApplicationLocalizationResourceDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsApplicationLocalizationResourceDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsApplicationLocalizationResourceDto build() =>
      _build();

  _$ApplicationConfigurationsApplicationLocalizationResourceDto _build() {
    _$ApplicationConfigurationsApplicationLocalizationResourceDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsApplicationLocalizationResourceDto._(
              texts: _texts?.build(), baseResources: _baseResources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'texts';
        _texts?.build();
        _$failedField = 'baseResources';
        _baseResources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsApplicationLocalizationResourceDto',
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
