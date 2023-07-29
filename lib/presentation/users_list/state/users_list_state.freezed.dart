// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  set users(List<User> value) => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  set isLoading(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersListStateCopyWith<UsersListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListStateCopyWith<$Res> {
  factory $UsersListStateCopyWith(
          UsersListState value, $Res Function(UsersListState) then) =
      _$UsersListStateCopyWithImpl<$Res, UsersListState>;
  @useResult
  $Res call({int counter, List<User> users, bool isLoading});
}

/// @nodoc
class _$UsersListStateCopyWithImpl<$Res, $Val extends UsersListState>
    implements $UsersListStateCopyWith<$Res> {
  _$UsersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? users = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersListStateCopyWith<$Res>
    implements $UsersListStateCopyWith<$Res> {
  factory _$$_UsersListStateCopyWith(
          _$_UsersListState value, $Res Function(_$_UsersListState) then) =
      __$$_UsersListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<User> users, bool isLoading});
}

/// @nodoc
class __$$_UsersListStateCopyWithImpl<$Res>
    extends _$UsersListStateCopyWithImpl<$Res, _$_UsersListState>
    implements _$$_UsersListStateCopyWith<$Res> {
  __$$_UsersListStateCopyWithImpl(
      _$_UsersListState _value, $Res Function(_$_UsersListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? users = null,
    Object? isLoading = null,
  }) {
    return _then(_$_UsersListState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UsersListState implements _UsersListState {
  _$_UsersListState(
      {this.counter = 0, this.users = const [], this.isLoading = false});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<User> users;
  @override
  @JsonKey()
  bool isLoading;

  @override
  String toString() {
    return 'UsersListState(counter: $counter, users: $users, isLoading: $isLoading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersListStateCopyWith<_$_UsersListState> get copyWith =>
      __$$_UsersListStateCopyWithImpl<_$_UsersListState>(this, _$identity);
}

abstract class _UsersListState implements UsersListState {
  factory _UsersListState({int counter, List<User> users, bool isLoading}) =
      _$_UsersListState;

  @override
  int get counter;
  set counter(int value);
  @override
  List<User> get users;
  set users(List<User> value);
  @override
  bool get isLoading;
  set isLoading(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_UsersListStateCopyWith<_$_UsersListState> get copyWith =>
      throw _privateConstructorUsedError;
}
