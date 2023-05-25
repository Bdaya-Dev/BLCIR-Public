// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_api_create_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto {
  @override
  final bool? isAvailable;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto._(
      {this.isAvailable})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto &&
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
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto')
          ..add('isAvailable', isAvailable))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder
    implements
        Builder<
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto? _$v;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
        ._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder
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
      ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
      build() => _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
      _build() {
    final _$result = _$v ??
        new _$ApplicationConfigurationsObjectExtendingExtensionPropertyApiCreateDto
            ._(isAvailable: isAvailable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
