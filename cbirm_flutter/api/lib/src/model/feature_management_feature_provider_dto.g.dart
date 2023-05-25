// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_management_feature_provider_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeatureManagementFeatureProviderDto
    extends FeatureManagementFeatureProviderDto {
  @override
  final String? name;
  @override
  final String? key;

  factory _$FeatureManagementFeatureProviderDto(
          [void Function(FeatureManagementFeatureProviderDtoBuilder)?
              updates]) =>
      (new FeatureManagementFeatureProviderDtoBuilder()..update(updates))
          ._build();

  _$FeatureManagementFeatureProviderDto._({this.name, this.key}) : super._();

  @override
  FeatureManagementFeatureProviderDto rebuild(
          void Function(FeatureManagementFeatureProviderDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureManagementFeatureProviderDtoBuilder toBuilder() =>
      new FeatureManagementFeatureProviderDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureManagementFeatureProviderDto &&
        name == other.name &&
        key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeatureManagementFeatureProviderDto')
          ..add('name', name)
          ..add('key', key))
        .toString();
  }
}

class FeatureManagementFeatureProviderDtoBuilder
    implements
        Builder<FeatureManagementFeatureProviderDto,
            FeatureManagementFeatureProviderDtoBuilder> {
  _$FeatureManagementFeatureProviderDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  FeatureManagementFeatureProviderDtoBuilder() {
    FeatureManagementFeatureProviderDto._defaults(this);
  }

  FeatureManagementFeatureProviderDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureManagementFeatureProviderDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeatureManagementFeatureProviderDto;
  }

  @override
  void update(
      void Function(FeatureManagementFeatureProviderDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureManagementFeatureProviderDto build() => _build();

  _$FeatureManagementFeatureProviderDto _build() {
    final _$result = _$v ??
        new _$FeatureManagementFeatureProviderDto._(name: name, key: key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
