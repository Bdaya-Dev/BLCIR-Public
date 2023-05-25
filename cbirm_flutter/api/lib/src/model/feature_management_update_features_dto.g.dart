// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_management_update_features_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeatureManagementUpdateFeaturesDto
    extends FeatureManagementUpdateFeaturesDto {
  @override
  final BuiltList<FeatureManagementUpdateFeatureDto>? features;

  factory _$FeatureManagementUpdateFeaturesDto(
          [void Function(FeatureManagementUpdateFeaturesDtoBuilder)?
              updates]) =>
      (new FeatureManagementUpdateFeaturesDtoBuilder()..update(updates))
          ._build();

  _$FeatureManagementUpdateFeaturesDto._({this.features}) : super._();

  @override
  FeatureManagementUpdateFeaturesDto rebuild(
          void Function(FeatureManagementUpdateFeaturesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureManagementUpdateFeaturesDtoBuilder toBuilder() =>
      new FeatureManagementUpdateFeaturesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureManagementUpdateFeaturesDto &&
        features == other.features;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeatureManagementUpdateFeaturesDto')
          ..add('features', features))
        .toString();
  }
}

class FeatureManagementUpdateFeaturesDtoBuilder
    implements
        Builder<FeatureManagementUpdateFeaturesDto,
            FeatureManagementUpdateFeaturesDtoBuilder> {
  _$FeatureManagementUpdateFeaturesDto? _$v;

  ListBuilder<FeatureManagementUpdateFeatureDto>? _features;
  ListBuilder<FeatureManagementUpdateFeatureDto> get features =>
      _$this._features ??= new ListBuilder<FeatureManagementUpdateFeatureDto>();
  set features(ListBuilder<FeatureManagementUpdateFeatureDto>? features) =>
      _$this._features = features;

  FeatureManagementUpdateFeaturesDtoBuilder() {
    FeatureManagementUpdateFeaturesDto._defaults(this);
  }

  FeatureManagementUpdateFeaturesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _features = $v.features?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureManagementUpdateFeaturesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeatureManagementUpdateFeaturesDto;
  }

  @override
  void update(
      void Function(FeatureManagementUpdateFeaturesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureManagementUpdateFeaturesDto build() => _build();

  _$FeatureManagementUpdateFeaturesDto _build() {
    _$FeatureManagementUpdateFeaturesDto _$result;
    try {
      _$result = _$v ??
          new _$FeatureManagementUpdateFeaturesDto._(
              features: _features?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        _features?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FeatureManagementUpdateFeaturesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
