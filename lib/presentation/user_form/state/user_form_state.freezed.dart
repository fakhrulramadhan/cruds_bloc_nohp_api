// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFormState {
  int get counter => throw _privateConstructorUsedError;
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
  $UserFormStateCopyWith<UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res, UserFormState>;
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
class _$UserFormStateCopyWithImpl<$Res, $Val extends UserFormState>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserFormStateCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$$_UserFormStateCopyWith(
          _$_UserFormState value, $Res Function(_$_UserFormState) then) =
      __$$_UserFormStateCopyWithImpl<$Res>;
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
class __$$_UserFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res, _$_UserFormState>
    implements _$$_UserFormStateCopyWith<$Res> {
  __$$_UserFormStateCopyWithImpl(
      _$_UserFormState _value, $Res Function(_$_UserFormState) _then)
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
    return _then(_$_UserFormState(
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

class _$_UserFormState implements _UserFormState {
  _$_UserFormState(
      {this.counter = 0,
      this.userName = '',
      this.address = '',
      this.dateOfBirth = '',
      this.user,
      this.isLoading = false});

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
    return 'UserFormState(counter: $counter, userName: $userName, address: $address, dateOfBirth: $dateOfBirth, user: $user, isLoading: $isLoading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFormStateCopyWith<_$_UserFormState> get copyWith =>
      __$$_UserFormStateCopyWithImpl<_$_UserFormState>(this, _$identity);
}

abstract class _UserFormState implements UserFormState {
  factory _UserFormState(
      {int counter,
      String userName,
      String address,
      String dateOfBirth,
      User? user,
      bool isLoading}) = _$_UserFormState;

  @override
  int get counter;
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
  _$$_UserFormStateCopyWith<_$_UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
