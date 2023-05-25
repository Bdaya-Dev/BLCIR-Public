// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_remote_service_validation_error_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRemoteServiceValidationErrorInfo
    extends HttpRemoteServiceValidationErrorInfo {
  @override
  final String? message;
  @override
  final BuiltList<String>? members;

  factory _$HttpRemoteServiceValidationErrorInfo(
          [void Function(HttpRemoteServiceValidationErrorInfoBuilder)?
              updates]) =>
      (new HttpRemoteServiceValidationErrorInfoBuilder()..update(updates))
          ._build();

  _$HttpRemoteServiceValidationErrorInfo._({this.message, this.members})
      : super._();

  @override
  HttpRemoteServiceValidationErrorInfo rebuild(
          void Function(HttpRemoteServiceValidationErrorInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRemoteServiceValidationErrorInfoBuilder toBuilder() =>
      new HttpRemoteServiceValidationErrorInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRemoteServiceValidationErrorInfo &&
        message == other.message &&
        members == other.members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HttpRemoteServiceValidationErrorInfo')
          ..add('message', message)
          ..add('members', members))
        .toString();
  }
}

class HttpRemoteServiceValidationErrorInfoBuilder
    implements
        Builder<HttpRemoteServiceValidationErrorInfo,
            HttpRemoteServiceValidationErrorInfoBuilder> {
  _$HttpRemoteServiceValidationErrorInfo? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<String>? _members;
  ListBuilder<String> get members =>
      _$this._members ??= new ListBuilder<String>();
  set members(ListBuilder<String>? members) => _$this._members = members;

  HttpRemoteServiceValidationErrorInfoBuilder() {
    HttpRemoteServiceValidationErrorInfo._defaults(this);
  }

  HttpRemoteServiceValidationErrorInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _members = $v.members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRemoteServiceValidationErrorInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRemoteServiceValidationErrorInfo;
  }

  @override
  void update(
      void Function(HttpRemoteServiceValidationErrorInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRemoteServiceValidationErrorInfo build() => _build();

  _$HttpRemoteServiceValidationErrorInfo _build() {
    _$HttpRemoteServiceValidationErrorInfo _$result;
    try {
      _$result = _$v ??
          new _$HttpRemoteServiceValidationErrorInfo._(
              message: message, members: _members?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpRemoteServiceValidationErrorInfo',
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
