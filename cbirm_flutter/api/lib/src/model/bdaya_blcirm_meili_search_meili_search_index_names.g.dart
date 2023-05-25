// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_meili_search_meili_search_index_names.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames
    extends BdayaBLCIRMMeiliSearchMeiliSearchIndexNames {
  @override
  final String? tenants;
  @override
  final String? loans;
  @override
  final String? documents;
  @override
  final String? people;

  factory _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames(
          [void Function(BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder)?
              updates]) =>
      (new BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames._(
      {this.tenants, this.loans, this.documents, this.people})
      : super._();

  @override
  BdayaBLCIRMMeiliSearchMeiliSearchIndexNames rebuild(
          void Function(BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder toBuilder() =>
      new BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMMeiliSearchMeiliSearchIndexNames &&
        tenants == other.tenants &&
        loans == other.loans &&
        documents == other.documents &&
        people == other.people;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenants.hashCode);
    _$hash = $jc(_$hash, loans.hashCode);
    _$hash = $jc(_$hash, documents.hashCode);
    _$hash = $jc(_$hash, people.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMMeiliSearchMeiliSearchIndexNames')
          ..add('tenants', tenants)
          ..add('loans', loans)
          ..add('documents', documents)
          ..add('people', people))
        .toString();
  }
}

class BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder
    implements
        Builder<BdayaBLCIRMMeiliSearchMeiliSearchIndexNames,
            BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder> {
  _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames? _$v;

  String? _tenants;
  String? get tenants => _$this._tenants;
  set tenants(String? tenants) => _$this._tenants = tenants;

  String? _loans;
  String? get loans => _$this._loans;
  set loans(String? loans) => _$this._loans = loans;

  String? _documents;
  String? get documents => _$this._documents;
  set documents(String? documents) => _$this._documents = documents;

  String? _people;
  String? get people => _$this._people;
  set people(String? people) => _$this._people = people;

  BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder() {
    BdayaBLCIRMMeiliSearchMeiliSearchIndexNames._defaults(this);
  }

  BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenants = $v.tenants;
      _loans = $v.loans;
      _documents = $v.documents;
      _people = $v.people;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMMeiliSearchMeiliSearchIndexNames other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames;
  }

  @override
  void update(
      void Function(BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMMeiliSearchMeiliSearchIndexNames build() => _build();

  _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMMeiliSearchMeiliSearchIndexNames._(
            tenants: tenants,
            loans: loans,
            documents: documents,
            people: people);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
