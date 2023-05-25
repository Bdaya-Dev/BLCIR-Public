// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_action_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingActionApiDescriptionModel
    extends HttpModelingActionApiDescriptionModel {
  @override
  final String? uniqueName;
  @override
  final String? name;
  @override
  final String? httpMethod;
  @override
  final String? url;
  @override
  final BuiltList<String>? supportedVersions;
  @override
  final BuiltList<HttpModelingMethodParameterApiDescriptionModel>?
      parametersOnMethod;
  @override
  final BuiltList<HttpModelingParameterApiDescriptionModel>? parameters;
  @override
  final HttpModelingReturnValueApiDescriptionModel? returnValue;
  @override
  final bool? allowAnonymous;
  @override
  final String? implementFrom;

  factory _$HttpModelingActionApiDescriptionModel(
          [void Function(HttpModelingActionApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingActionApiDescriptionModelBuilder()..update(updates))
          ._build();

  _$HttpModelingActionApiDescriptionModel._(
      {this.uniqueName,
      this.name,
      this.httpMethod,
      this.url,
      this.supportedVersions,
      this.parametersOnMethod,
      this.parameters,
      this.returnValue,
      this.allowAnonymous,
      this.implementFrom})
      : super._();

  @override
  HttpModelingActionApiDescriptionModel rebuild(
          void Function(HttpModelingActionApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingActionApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingActionApiDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingActionApiDescriptionModel &&
        uniqueName == other.uniqueName &&
        name == other.name &&
        httpMethod == other.httpMethod &&
        url == other.url &&
        supportedVersions == other.supportedVersions &&
        parametersOnMethod == other.parametersOnMethod &&
        parameters == other.parameters &&
        returnValue == other.returnValue &&
        allowAnonymous == other.allowAnonymous &&
        implementFrom == other.implementFrom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uniqueName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, supportedVersions.hashCode);
    _$hash = $jc(_$hash, parametersOnMethod.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, returnValue.hashCode);
    _$hash = $jc(_$hash, allowAnonymous.hashCode);
    _$hash = $jc(_$hash, implementFrom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingActionApiDescriptionModel')
          ..add('uniqueName', uniqueName)
          ..add('name', name)
          ..add('httpMethod', httpMethod)
          ..add('url', url)
          ..add('supportedVersions', supportedVersions)
          ..add('parametersOnMethod', parametersOnMethod)
          ..add('parameters', parameters)
          ..add('returnValue', returnValue)
          ..add('allowAnonymous', allowAnonymous)
          ..add('implementFrom', implementFrom))
        .toString();
  }
}

class HttpModelingActionApiDescriptionModelBuilder
    implements
        Builder<HttpModelingActionApiDescriptionModel,
            HttpModelingActionApiDescriptionModelBuilder> {
  _$HttpModelingActionApiDescriptionModel? _$v;

  String? _uniqueName;
  String? get uniqueName => _$this._uniqueName;
  set uniqueName(String? uniqueName) => _$this._uniqueName = uniqueName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ListBuilder<String>? _supportedVersions;
  ListBuilder<String> get supportedVersions =>
      _$this._supportedVersions ??= new ListBuilder<String>();
  set supportedVersions(ListBuilder<String>? supportedVersions) =>
      _$this._supportedVersions = supportedVersions;

  ListBuilder<HttpModelingMethodParameterApiDescriptionModel>?
      _parametersOnMethod;
  ListBuilder<HttpModelingMethodParameterApiDescriptionModel>
      get parametersOnMethod => _$this._parametersOnMethod ??=
          new ListBuilder<HttpModelingMethodParameterApiDescriptionModel>();
  set parametersOnMethod(
          ListBuilder<HttpModelingMethodParameterApiDescriptionModel>?
              parametersOnMethod) =>
      _$this._parametersOnMethod = parametersOnMethod;

  ListBuilder<HttpModelingParameterApiDescriptionModel>? _parameters;
  ListBuilder<HttpModelingParameterApiDescriptionModel> get parameters =>
      _$this._parameters ??=
          new ListBuilder<HttpModelingParameterApiDescriptionModel>();
  set parameters(
          ListBuilder<HttpModelingParameterApiDescriptionModel>? parameters) =>
      _$this._parameters = parameters;

  HttpModelingReturnValueApiDescriptionModelBuilder? _returnValue;
  HttpModelingReturnValueApiDescriptionModelBuilder get returnValue =>
      _$this._returnValue ??=
          new HttpModelingReturnValueApiDescriptionModelBuilder();
  set returnValue(
          HttpModelingReturnValueApiDescriptionModelBuilder? returnValue) =>
      _$this._returnValue = returnValue;

  bool? _allowAnonymous;
  bool? get allowAnonymous => _$this._allowAnonymous;
  set allowAnonymous(bool? allowAnonymous) =>
      _$this._allowAnonymous = allowAnonymous;

  String? _implementFrom;
  String? get implementFrom => _$this._implementFrom;
  set implementFrom(String? implementFrom) =>
      _$this._implementFrom = implementFrom;

  HttpModelingActionApiDescriptionModelBuilder() {
    HttpModelingActionApiDescriptionModel._defaults(this);
  }

  HttpModelingActionApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uniqueName = $v.uniqueName;
      _name = $v.name;
      _httpMethod = $v.httpMethod;
      _url = $v.url;
      _supportedVersions = $v.supportedVersions?.toBuilder();
      _parametersOnMethod = $v.parametersOnMethod?.toBuilder();
      _parameters = $v.parameters?.toBuilder();
      _returnValue = $v.returnValue?.toBuilder();
      _allowAnonymous = $v.allowAnonymous;
      _implementFrom = $v.implementFrom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingActionApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingActionApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingActionApiDescriptionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingActionApiDescriptionModel build() => _build();

  _$HttpModelingActionApiDescriptionModel _build() {
    _$HttpModelingActionApiDescriptionModel _$result;
    try {
      _$result = _$v ??
          new _$HttpModelingActionApiDescriptionModel._(
              uniqueName: uniqueName,
              name: name,
              httpMethod: httpMethod,
              url: url,
              supportedVersions: _supportedVersions?.build(),
              parametersOnMethod: _parametersOnMethod?.build(),
              parameters: _parameters?.build(),
              returnValue: _returnValue?.build(),
              allowAnonymous: allowAnonymous,
              implementFrom: implementFrom);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedVersions';
        _supportedVersions?.build();
        _$failedField = 'parametersOnMethod';
        _parametersOnMethod?.build();
        _$failedField = 'parameters';
        _parameters?.build();
        _$failedField = 'returnValue';
        _returnValue?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpModelingActionApiDescriptionModel',
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
