// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_ui_table_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto {
  @override
  final bool? isVisible;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto._(
      {this.isVisible})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto &&
        isVisible == other.isVisible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isVisible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto')
          ..add('isVisible', isVisible))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder
    implements
        Builder<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto? _$v;

  bool? _isVisible;
  bool? get isVisible => _$this._isVisible;
  set isVisible(bool? isVisible) => _$this._isVisible = isVisible;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
        ._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _isVisible = $v.isVisible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
      _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto
            ._(isVisible: isVisible);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
