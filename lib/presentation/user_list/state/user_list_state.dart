import 'package:cruds_bloc_nohp_api/model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_list_state.freezed.dart';

@unfreezed
class UserListState with _$UserListState {
  factory UserListState(
      {@Default(0) int counter,
      @Default([]) List<User> users,
      @Default(false) bool isLoading}) = _UserListState;
}
