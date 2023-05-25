// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_management_update_feature_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeatureManagementUpdateFeatureDto
    extends FeatureManagementUpdateFeatureDto {
  @override
  final String? name;
  @override
  final String? value;

  factory _$FeatureManagementUpdateFeatureDto(
          [void Function(FeatureManagementUpdateFeatureDtoBuilder)? updates]) =>
      (new FeatureManagementUpdateFeatureDtoBuilder()..update(updates))
          ._build();

  _$FeatureManagementUpdateFeatureDto._({this.name, this.value}) : super._();

  @override
  FeatureManagementUpdateFeatureDto rebuild(
          void Function(FeatureManagementUpdateFeatureDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureManagementUpdateFeatureDtoBuilder toBuilder() =>
      new FeatureManagementUpdateFeatureDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureManagementUpdateFeatureDto &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeatureManagementUpdateFeatureDto')
          ..add('name', name)
          ..add('value', value))
        .toString();
  }
}

class FeatureManagementUpdateFeatureDtoBuilder
    implements
        Builder<FeatureManagementUpdateFeatureDto,
            FeatureManagementUpdateFeatureDtoBuilder> {
  _$FeatureManagementUpdateFeatureDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  FeatureManagementUpdateFeatureDtoBuilder() {
    FeatureManagementUpdateFeatureDto._defaults(this);
  }

  FeatureManagementUpdateFeatureDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureManagementUpdateFeatureDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeatureManagementUpdateFeatureDto;
  }

  @override
  void update(
      void Function(FeatureManagementUpdateFeatureDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureManagementUpdateFeatureDto build() => _build();

  _$FeatureManagementUpdateFeatureDto _build() {
    final _$result = _$v ??
        new _$FeatureManagementUpdateFeatureDto._(name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
