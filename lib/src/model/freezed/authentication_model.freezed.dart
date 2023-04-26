// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../authentication_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) {
  return _AuthenticationModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationModel {
  String get fristName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationModelCopyWith<AuthenticationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationModelCopyWith<$Res> {
  factory $AuthenticationModelCopyWith(
          AuthenticationModel value, $Res Function(AuthenticationModel) then) =
      _$AuthenticationModelCopyWithImpl<$Res, AuthenticationModel>;
  @useResult
  $Res call(
      {String fristName,
      String lastName,
      String userName,
      String password,
      String email});
}

/// @nodoc
class _$AuthenticationModelCopyWithImpl<$Res, $Val extends AuthenticationModel>
    implements $AuthenticationModelCopyWith<$Res> {
  _$AuthenticationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fristName = null,
    Object? lastName = null,
    Object? userName = null,
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      fristName: null == fristName
          ? _value.fristName
          : fristName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticationModelCopyWith<$Res>
    implements $AuthenticationModelCopyWith<$Res> {
  factory _$$_AuthenticationModelCopyWith(_$_AuthenticationModel value,
          $Res Function(_$_AuthenticationModel) then) =
      __$$_AuthenticationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fristName,
      String lastName,
      String userName,
      String password,
      String email});
}

/// @nodoc
class __$$_AuthenticationModelCopyWithImpl<$Res>
    extends _$AuthenticationModelCopyWithImpl<$Res, _$_AuthenticationModel>
    implements _$$_AuthenticationModelCopyWith<$Res> {
  __$$_AuthenticationModelCopyWithImpl(_$_AuthenticationModel _value,
      $Res Function(_$_AuthenticationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fristName = null,
    Object? lastName = null,
    Object? userName = null,
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$_AuthenticationModel(
      fristName: null == fristName
          ? _value.fristName
          : fristName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationModel implements _AuthenticationModel {
  const _$_AuthenticationModel(
      {required this.fristName,
      required this.lastName,
      required this.userName,
      required this.password,
      required this.email});

  factory _$_AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationModelFromJson(json);

  @override
  final String fristName;
  @override
  final String lastName;
  @override
  final String userName;
  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationModel(fristName: $fristName, lastName: $lastName, userName: $userName, password: $password, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationModel &&
            (identical(other.fristName, fristName) ||
                other.fristName == fristName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fristName, lastName, userName, password, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationModelCopyWith<_$_AuthenticationModel> get copyWith =>
      __$$_AuthenticationModelCopyWithImpl<_$_AuthenticationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationModelToJson(
      this,
    );
  }
}

abstract class _AuthenticationModel implements AuthenticationModel {
  const factory _AuthenticationModel(
      {required final String fristName,
      required final String lastName,
      required final String userName,
      required final String password,
      required final String email}) = _$_AuthenticationModel;

  factory _AuthenticationModel.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationModel.fromJson;

  @override
  String get fristName;
  @override
  String get lastName;
  @override
  String get userName;
  @override
  String get password;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationModelCopyWith<_$_AuthenticationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
