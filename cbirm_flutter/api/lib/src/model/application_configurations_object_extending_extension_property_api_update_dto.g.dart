// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_api_update_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto {
  @override
  final bool? isAvailable;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto._(
      {this.isAvailable})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto &&
        isAvailable == other.isAvailable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto')
          ..add('isAvailable', isAvailable))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder
    implements
        Builder<
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto? _$v;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
        ._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _isAvailable = $v.isAvailable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
      build() => _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
      _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiUpdateDto
            ._(isAvailable: isAvailable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
