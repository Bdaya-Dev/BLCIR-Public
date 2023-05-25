// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_api_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto {
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto?
      onGet;
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto?
      onCreate;
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto?
      onUpdate;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto._(
      {this.onGet, this.onCreate, this.onUpdate})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto &&
        onGet == other.onGet &&
        onCreate == other.onCreate &&
        onUpdate == other.onUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, onGet.hashCode);
    _$hash = $jc(_$hash, onCreate.hashCode);
    _$hash = $jc(_$hash, onUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto')
          ..add('onGet', onGet)
          ..add('onCreate', onCreate)
          ..add('onUpdate', onUpdate))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto? _$v;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder?
      _onGet;
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder
      get onGet => _$this._onGet ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder();
  set onGet(
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder?
              onGet) =>
      _$this._onGet = onGet;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder?
      _onCreate;
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder
      get onCreate => _$this._onCreate ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder();
  set onCreate(
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder?
              onCreate) =>
      _$this._onCreate = onCreate;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder?
      _onUpdate;
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder
      get onUpdate => _$this._onUpdate ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder();
  set onUpdate(
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder?
              onUpdate) =>
      _$this._onUpdate = onUpdate;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto._defaults(
        this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _onGet = $v.onGet?.toBuilder();
      _onCreate = $v.onCreate?.toBuilder();
      _onUpdate = $v.onUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto _build() {
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto
                  ._(
              onGet: _onGet?.build(),
              onCreate: _onCreate?.build(),
              onUpdate: _onUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'onGet';
        _onGet?.build();
        _$failedField = 'onCreate';
        _onCreate?.build();
        _$failedField = 'onUpdate';
        _onUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto',
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
