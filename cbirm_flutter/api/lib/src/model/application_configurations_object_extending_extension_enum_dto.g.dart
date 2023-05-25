// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_enum_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionEnumDto
    extends ApplicationConfigurationsObjectExtendingExtensionEnumDto {
  @override
  final BuiltList<
      ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto>? fields;
  @override
  final String? localizationResource;

  factory _$ApplicationConfigurationsObjectExtendingExtensionEnumDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionEnumDto._(
      {this.fields, this.localizationResource})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionEnumDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder toBuilder() =>
      new ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsObjectExtendingExtensionEnumDto &&
        fields == other.fields &&
        localizationResource == other.localizationResource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, localizationResource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingExtensionEnumDto')
          ..add('fields', fields)
          ..add('localizationResource', localizationResource))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingExtensionEnumDto,
            ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionEnumDto? _$v;

  ListBuilder<ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto>?
      _fields;
  ListBuilder<ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto>
      get fields => _$this._fields ??= new ListBuilder<
          ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto>();
  set fields(
          ListBuilder<
                  ApplicationConfigurationsObjectExtendingExtensionEnumFieldDto>?
              fields) =>
      _$this._fields = fields;

  String? _localizationResource;
  String? get localizationResource => _$this._localizationResource;
  set localizationResource(String? localizationResource) =>
      _$this._localizationResource = localizationResource;

  ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionEnumDto._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fields = $v.fields?.toBuilder();
      _localizationResource = $v.localizationResource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsObjectExtendingExtensionEnumDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsObjectExtendingExtensionEnumDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionEnumDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionEnumDto build() => _build();

  _$ApplicationConfigurationsObjectExtendingExtensionEnumDto _build() {
    _$ApplicationConfigurationsObjectExtendingExtensionEnumDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsObjectExtendingExtensionEnumDto._(
              fields: _fields?.build(),
              localizationResource: localizationResource);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsObjectExtendingExtensionEnumDto',
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
