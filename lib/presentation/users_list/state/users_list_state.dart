import 'package:cruds_bloc_nohp_api/model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_list_state.freezed.dart';

@unfreezed
class UsersListState with _$UsersListState {
  factory UsersListState(
      {@Default(0) int counter,
      @Default([]) List<User> users,
      @Default(false) bool isLoading}) = _UsersListState;
}
