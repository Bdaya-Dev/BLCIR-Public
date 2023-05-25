// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_ui_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto {
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto?
      onTable;
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto?
      onCreateForm;
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto?
      onEditForm;
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto?
      lookup;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto._(
      {this.onTable, this.onCreateForm, this.onEditForm, this.lookup})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto &&
        onTable == other.onTable &&
        onCreateForm == other.onCreateForm &&
        onEditForm == other.onEditForm &&
        lookup == other.lookup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, onTable.hashCode);
    _$hash = $jc(_$hash, onCreateForm.hashCode);
    _$hash = $jc(_$hash, onEditForm.hashCode);
    _$hash = $jc(_$hash, lookup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto')
          ..add('onTable', onTable)
          ..add('onCreateForm', onCreateForm)
          ..add('onEditForm', onEditForm)
          ..add('lookup', lookup))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto? _$v;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder?
      _onTable;
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder
      get onTable => _$this._onTable ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder();
  set onTable(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder?
              onTable) =>
      _$this._onTable = onTable;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder?
      _onCreateForm;
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder
      get onCreateForm => _$this._onCreateForm ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder();
  set onCreateForm(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder?
              onCreateForm) =>
      _$this._onCreateForm = onCreateForm;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder?
      _onEditForm;
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder
      get onEditForm => _$this._onEditForm ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder();
  set onEditForm(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder?
              onEditForm) =>
      _$this._onEditForm = onEditForm;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder?
      _lookup;
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder
      get lookup => _$this._lookup ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder();
  set lookup(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDtoBuilder?
              lookup) =>
      _$this._lookup = lookup;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto._defaults(
        this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _onTable = $v.onTable?.toBuilder();
      _onCreateForm = $v.onCreateForm?.toBuilder();
      _onEditForm = $v.onEditForm?.toBuilder();
      _lookup = $v.lookup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto _build() {
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto
                  ._(
              onTable: _onTable?.build(),
              onCreateForm: _onCreateForm?.build(),
              onEditForm: _onEditForm?.build(),
              lookup: _lookup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'onTable';
        _onTable?.build();
        _$failedField = 'onCreateForm';
        _onCreateForm?.build();
        _$failedField = 'onEditForm';
        _onEditForm?.build();
        _$failedField = 'lookup';
        _lookup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto',
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
