// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_paged_result_dto1_bdaya_blcirm_state_document_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto
    extends ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto {
  @override
  final BuiltList<BdayaBLCIRMStateDocumentDto>? items;
  @override
  final int? totalCount;

  factory _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto(
          [void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder)?
              updates]) =>
      (new ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto._(
      {this.items, this.totalCount})
      : super._();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto rebuild(
          void Function(
                  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder
      toBuilder() =>
          new ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto &&
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
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto')
          ..add('items', items)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder
    implements
        Builder<ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto,
            ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder> {
  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto? _$v;

  ListBuilder<BdayaBLCIRMStateDocumentDto>? _items;
  ListBuilder<BdayaBLCIRMStateDocumentDto> get items =>
      _$this._items ??= new ListBuilder<BdayaBLCIRMStateDocumentDto>();
  set items(ListBuilder<BdayaBLCIRMStateDocumentDto>? items) =>
      _$this._items = items;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder() {
    ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto._defaults(this);
  }

  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder get _$this {
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
      ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto;
  }

  @override
  void update(
      void Function(
              ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto build() => _build();

  _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto _build() {
    _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto._(
              items: _items?.build(), totalCount: totalCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto',
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
