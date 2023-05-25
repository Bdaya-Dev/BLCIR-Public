// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_management_get_feature_list_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeatureManagementGetFeatureListResultDto
    extends FeatureManagementGetFeatureListResultDto {
  @override
  final BuiltList<FeatureManagementFeatureGroupDto>? groups;

  factory _$FeatureManagementGetFeatureListResultDto(
          [void Function(FeatureManagementGetFeatureListResultDtoBuilder)?
              updates]) =>
      (new FeatureManagementGetFeatureListResultDtoBuilder()..update(updates))
          ._build();

  _$FeatureManagementGetFeatureListResultDto._({this.groups}) : super._();

  @override
  FeatureManagementGetFeatureListResultDto rebuild(
          void Function(FeatureManagementGetFeatureListResultDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureManagementGetFeatureListResultDtoBuilder toBuilder() =>
      new FeatureManagementGetFeatureListResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureManagementGetFeatureListResultDto &&
        groups == other.groups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'FeatureManagementGetFeatureListResultDto')
          ..add('groups', groups))
        .toString();
  }
}

class FeatureManagementGetFeatureListResultDtoBuilder
    implements
        Builder<FeatureManagementGetFeatureListResultDto,
            FeatureManagementGetFeatureListResultDtoBuilder> {
  _$FeatureManagementGetFeatureListResultDto? _$v;

  ListBuilder<FeatureManagementFeatureGroupDto>? _groups;
  ListBuilder<FeatureManagementFeatureGroupDto> get groups =>
      _$this._groups ??= new ListBuilder<FeatureManagementFeatureGroupDto>();
  set groups(ListBuilder<FeatureManagementFeatureGroupDto>? groups) =>
      _$this._groups = groups;

  FeatureManagementGetFeatureListResultDtoBuilder() {
    FeatureManagementGetFeatureListResultDto._defaults(this);
  }

  FeatureManagementGetFeatureListResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureManagementGetFeatureListResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeatureManagementGetFeatureListResultDto;
  }

  @override
  void update(
      void Function(FeatureManagementGetFeatureListResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureManagementGetFeatureListResultDto build() => _build();

  _$FeatureManagementGetFeatureListResultDto _build() {
    _$FeatureManagementGetFeatureListResultDto _$result;
    try {
      _$result = _$v ??
          new _$FeatureManagementGetFeatureListResultDto._(
              groups: _groups?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FeatureManagementGetFeatureListResultDto',
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
