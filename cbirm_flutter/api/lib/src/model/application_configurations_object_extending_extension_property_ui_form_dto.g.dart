// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_ui_form_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto {
  @override
  final bool? isVisible;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto._(
      {this.isVisible})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto &&
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
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto')
          ..add('isVisible', isVisible))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder
    implements
        Builder<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto? _$v;

  bool? _isVisible;
  bool? get isVisible => _$this._isVisible;
  set isVisible(bool? isVisible) => _$this._isVisible = isVisible;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
        ._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder
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
      ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
      _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto
            ._(isVisible: isVisible);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
