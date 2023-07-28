import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../model/user/user.dart';

part 'user_form_state.freezed.dart';

@unfreezed
class UserFormState with _$UserFormState {
  factory UserFormState({
    @Default(0) int counter,
    @Default('') String userName,
    @Default('') String address,
    @Default('') String dateOfBirth,
    User? user,
    @Default(false) bool isLoading,
  }) = _UserFormState;
}
