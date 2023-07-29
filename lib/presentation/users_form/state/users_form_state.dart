import 'package:cruds_bloc_nohp_api/core.dart';
part 'users_form_state.freezed.dart';

//ctrl+shift+s ke state, ctrl+shift+v ke view
//masukkin field field yang di dalam model ke dalam state bloc

//view -> state -> view -> state
@unfreezed
class UsersFormState with _$UsersFormState {
  factory UsersFormState(
      {
      //taruh nilai defaultnya di @default(..)
      @Default(0) int counter,
      @Default('') String userName,
      @Default('') String address,
      @Default('') String dateOfBirth,
      User? user,
      @Default(false) bool isLoading}) = _UsersFormState;
}

//setelah beres buat state nilai fieldnya jalankan perintah
//flutter pub run build_runner watch --delete-conflicting-outputs (ctrl+shift+alt+b)
