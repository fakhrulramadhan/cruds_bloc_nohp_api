// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersFormState {
//taruh nilai defaultnya di @default(..)
  int get counter =>
      throw _privateConstructorUsedError; //taruh nilai defaultnya di @default(..)
  set counter(int value) => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  set userName(String value) => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  set address(String value) => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  set dateOfBirth(String value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  set isLoading(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersFormStateCopyWith<UsersFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersFormStateCopyWith<$Res> {
  factory $UsersFormStateCopyWith(
          UsersFormState value, $Res Function(UsersFormState) then) =
      _$UsersFormStateCopyWithImpl<$Res, UsersFormState>;
  @useResult
  $Res call(
      {int counter,
      String userName,
      String address,
      String dateOfBirth,
      User? user,
      bool isLoading});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UsersFormStateCopyWithImpl<$Res, $Val extends UsersFormState>
    implements $UsersFormStateCopyWith<$Res> {
  _$UsersFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? userName = null,
    Object? address = null,
    Object? dateOfBirth = null,
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UsersFormStateCopyWith<$Res>
    implements $UsersFormStateCopyWith<$Res> {
  factory _$$_UsersFormStateCopyWith(
          _$_UsersFormState value, $Res Function(_$_UsersFormState) then) =
      __$$_UsersFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter,
      String userName,
      String address,
      String dateOfBirth,
      User? user,
      bool isLoading});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UsersFormStateCopyWithImpl<$Res>
    extends _$UsersFormStateCopyWithImpl<$Res, _$_UsersFormState>
    implements _$$_UsersFormStateCopyWith<$Res> {
  __$$_UsersFormStateCopyWithImpl(
      _$_UsersFormState _value, $Res Function(_$_UsersFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? userName = null,
    Object? address = null,
    Object? dateOfBirth = null,
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_UsersFormState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UsersFormState implements _UsersFormState {
  _$_UsersFormState(
      {this.counter = 0,
      this.userName = '',
      this.address = '',
      this.dateOfBirth = '',
      this.user,
      this.isLoading = false});

//taruh nilai defaultnya di @default(..)
  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  String userName;
  @override
  @JsonKey()
  String address;
  @override
  @JsonKey()
  String dateOfBirth;
  @override
  User? user;
  @override
  @JsonKey()
  bool isLoading;

  @override
  String toString() {
    return 'UsersFormState(counter: $counter, userName: $userName, address: $address, dateOfBirth: $dateOfBirth, user: $user, isLoading: $isLoading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersFormStateCopyWith<_$_UsersFormState> get copyWith =>
      __$$_UsersFormStateCopyWithImpl<_$_UsersFormState>(this, _$identity);
}

abstract class _UsersFormState implements UsersFormState {
  factory _UsersFormState(
      {int counter,
      String userName,
      String address,
      String dateOfBirth,
      User? user,
      bool isLoading}) = _$_UsersFormState;

  @override //taruh nilai defaultnya di @default(..)
  int get counter; //taruh nilai defaultnya di @default(..)
  set counter(int value);
  @override
  String get userName;
  set userName(String value);
  @override
  String get address;
  set address(String value);
  @override
  String get dateOfBirth;
  set dateOfBirth(String value);
  @override
  User? get user;
  set user(User? value);
  @override
  bool get isLoading;
  set isLoading(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_UsersFormStateCopyWith<_$_UsersFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
