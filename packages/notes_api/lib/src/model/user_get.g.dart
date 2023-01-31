// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserGet extends UserGet {
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;

  factory _$UserGet([void Function(UserGetBuilder)? updates]) =>
      (new UserGetBuilder()..update(updates))._build();

  _$UserGet._({required this.id, required this.name, required this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'UserGet', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'UserGet', 'name');
    BuiltValueNullFieldError.checkNotNull(email, r'UserGet', 'email');
  }

  @override
  UserGet rebuild(void Function(UserGetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserGetBuilder toBuilder() => new UserGetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserGet &&
        id == other.id &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserGet')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class UserGetBuilder implements Builder<UserGet, UserGetBuilder> {
  _$UserGet? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  UserGetBuilder() {
    UserGet._defaults(this);
  }

  UserGetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserGet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserGet;
  }

  @override
  void update(void Function(UserGetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserGet build() => _build();

  _$UserGet _build() {
    final _$result = _$v ??
        new _$UserGet._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'UserGet', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'UserGet', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'UserGet', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
