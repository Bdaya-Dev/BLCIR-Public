// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_paged_result_dto1_bdaya_blcirm_state_person_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto
    extends ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto {
  @override
  final BuiltList<BdayaBLCIRMStatePersonDto>? items;
  @override
  final int? totalCount;

  factory _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto(
          [void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder)?
              updates]) =>
      (new ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto._(
      {this.items, this.totalCount})
      : super._();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto rebuild(
          void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder toBuilder() =>
      new ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto &&
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
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto')
          ..add('items', items)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder
    implements
        Builder<ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto,
            ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder> {
  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto? _$v;

  ListBuilder<BdayaBLCIRMStatePersonDto>? _items;
  ListBuilder<BdayaBLCIRMStatePersonDto> get items =>
      _$this._items ??= new ListBuilder<BdayaBLCIRMStatePersonDto>();
  set items(ListBuilder<BdayaBLCIRMStatePersonDto>? items) =>
      _$this._items = items;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder() {
    ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto._defaults(this);
  }

  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto build() => _build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto _build() {
    _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto._(
              items: _items?.build(), totalCount: totalCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto',
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
