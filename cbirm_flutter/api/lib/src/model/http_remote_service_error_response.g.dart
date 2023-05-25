// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_remote_service_error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRemoteServiceErrorResponse extends HttpRemoteServiceErrorResponse {
  @override
  final HttpRemoteServiceErrorInfo? error;

  factory _$HttpRemoteServiceErrorResponse(
          [void Function(HttpRemoteServiceErrorResponseBuilder)? updates]) =>
      (new HttpRemoteServiceErrorResponseBuilder()..update(updates))._build();

  _$HttpRemoteServiceErrorResponse._({this.error}) : super._();

  @override
  HttpRemoteServiceErrorResponse rebuild(
          void Function(HttpRemoteServiceErrorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRemoteServiceErrorResponseBuilder toBuilder() =>
      new HttpRemoteServiceErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRemoteServiceErrorResponse && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HttpRemoteServiceErrorResponse')
          ..add('error', error))
        .toString();
  }
}

class HttpRemoteServiceErrorResponseBuilder
    implements
        Builder<HttpRemoteServiceErrorResponse,
            HttpRemoteServiceErrorResponseBuilder> {
  _$HttpRemoteServiceErrorResponse? _$v;

  HttpRemoteServiceErrorInfoBuilder? _error;
  HttpRemoteServiceErrorInfoBuilder get error =>
      _$this._error ??= new HttpRemoteServiceErrorInfoBuilder();
  set error(HttpRemoteServiceErrorInfoBuilder? error) => _$this._error = error;

  HttpRemoteServiceErrorResponseBuilder() {
    HttpRemoteServiceErrorResponse._defaults(this);
  }

  HttpRemoteServiceErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRemoteServiceErrorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRemoteServiceErrorResponse;
  }

  @override
  void update(void Function(HttpRemoteServiceErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRemoteServiceErrorResponse build() => _build();

  _$HttpRemoteServiceErrorResponse _build() {
    _$HttpRemoteServiceErrorResponse _$result;
    try {
      _$result =
          _$v ?? new _$HttpRemoteServiceErrorResponse._(error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpRemoteServiceErrorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
