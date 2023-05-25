// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_management_feature_group_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeatureManagementFeatureGroupDto
    extends FeatureManagementFeatureGroupDto {
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final BuiltList<FeatureManagementFeatureDto>? features;

  factory _$FeatureManagementFeatureGroupDto(
          [void Function(FeatureManagementFeatureGroupDtoBuilder)? updates]) =>
      (new FeatureManagementFeatureGroupDtoBuilder()..update(updates))._build();

  _$FeatureManagementFeatureGroupDto._(
      {this.name, this.displayName, this.features})
      : super._();

  @override
  FeatureManagementFeatureGroupDto rebuild(
          void Function(FeatureManagementFeatureGroupDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureManagementFeatureGroupDtoBuilder toBuilder() =>
      new FeatureManagementFeatureGroupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureManagementFeatureGroupDto &&
        name == other.name &&
        displayName == other.displayName &&
        features == other.features;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeatureManagementFeatureGroupDto')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('features', features))
        .toString();
  }
}

class FeatureManagementFeatureGroupDtoBuilder
    implements
        Builder<FeatureManagementFeatureGroupDto,
            FeatureManagementFeatureGroupDtoBuilder> {
  _$FeatureManagementFeatureGroupDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  ListBuilder<FeatureManagementFeatureDto>? _features;
  ListBuilder<FeatureManagementFeatureDto> get features =>
      _$this._features ??= new ListBuilder<FeatureManagementFeatureDto>();
  set features(ListBuilder<FeatureManagementFeatureDto>? features) =>
      _$this._features = features;

  FeatureManagementFeatureGroupDtoBuilder() {
    FeatureManagementFeatureGroupDto._defaults(this);
  }

  FeatureManagementFeatureGroupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayName = $v.displayName;
      _features = $v.features?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureManagementFeatureGroupDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeatureManagementFeatureGroupDto;
  }

  @override
  void update(void Function(FeatureManagementFeatureGroupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureManagementFeatureGroupDto build() => _build();

  _$FeatureManagementFeatureGroupDto _build() {
    _$FeatureManagementFeatureGroupDto _$result;
    try {
      _$result = _$v ??
          new _$FeatureManagementFeatureGroupDto._(
              name: name,
              displayName: displayName,
              features: _features?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        _features?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FeatureManagementFeatureGroupDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
