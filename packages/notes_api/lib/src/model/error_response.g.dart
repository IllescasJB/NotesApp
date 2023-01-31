// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorResponse extends ErrorResponse {
  @override
  final String? message;
  @override
  final int? status;
  @override
  final String? path;

  factory _$ErrorResponse([void Function(ErrorResponseBuilder)? updates]) =>
      (new ErrorResponseBuilder()..update(updates))._build();

  _$ErrorResponse._({this.message, this.status, this.path}) : super._();

  @override
  ErrorResponse rebuild(void Function(ErrorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorResponseBuilder toBuilder() => new ErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorResponse &&
        message == other.message &&
        status == other.status &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorResponse')
          ..add('message', message)
          ..add('status', status)
          ..add('path', path))
        .toString();
  }
}

class ErrorResponseBuilder
    implements Builder<ErrorResponse, ErrorResponseBuilder> {
  _$ErrorResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  ErrorResponseBuilder() {
    ErrorResponse._defaults(this);
  }

  ErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _status = $v.status;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorResponse;
  }

  @override
  void update(void Function(ErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorResponse build() => _build();

  _$ErrorResponse _build() {
    final _$result = _$v ??
        new _$ErrorResponse._(message: message, status: status, path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
