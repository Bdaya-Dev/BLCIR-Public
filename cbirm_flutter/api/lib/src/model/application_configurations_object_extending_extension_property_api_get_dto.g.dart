// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_api_get_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto {
  @override
  final bool? isAvailable;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto._(
      {this.isAvailable})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto &&
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
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto')
          ..add('isAvailable', isAvailable))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder
    implements
        Builder<
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto? _$v;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto
        ._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder
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
      ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto
      _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiGetDto
            ._(isAvailable: isAvailable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
