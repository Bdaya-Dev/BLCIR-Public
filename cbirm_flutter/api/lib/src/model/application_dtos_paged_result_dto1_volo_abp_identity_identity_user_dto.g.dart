// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_paged_result_dto1_volo_abp_identity_identity_user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto
    extends ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto {
  @override
  final BuiltList<IdentityIdentityUserDto>? items;
  @override
  final int? totalCount;

  factory _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto(
          [void Function(
                  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder)?
              updates]) =>
      (new ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto._(
      {this.items, this.totalCount})
      : super._();

  @override
  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto rebuild(
          void Function(
                  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder
      toBuilder() =>
          new ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto &&
        items == other.items &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto')
          ..add('items', items)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder
    implements
        Builder<ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto,
            ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder> {
  _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto? _$v;

  ListBuilder<IdentityIdentityUserDto>? _items;
  ListBuilder<IdentityIdentityUserDto> get items =>
      _$this._items ??= new ListBuilder<IdentityIdentityUserDto>();
  set items(ListBuilder<IdentityIdentityUserDto>? items) =>
      _$this._items = items;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder() {
    ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto._defaults(
        this);
  }

  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto build() =>
      _build();

  _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto _build() {
    _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto._(
              items: _items?.build(), totalCount: totalCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDto',
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
