import 'package:cruds_bloc_nohp_api/presentation/users_form/event/users_form_event.dart';
import 'package:cruds_bloc_nohp_api/presentation/users_form/state/users_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cruds_bloc_nohp_api/core.dart';

//utk inisiasi awalan memanggil fungsi ketika halaman apps dibuka
mixin _BlocLifecycle {
  void beforeInitState() {}
  void initState() {}
  void dispose() {}
}

class UsersFormBloc extends Bloc<UsersFormEvent, UsersFormState>
    with _BlocLifecycle {
  UsersFormBloc() : super(UsersFormState()) {
    //ini satu fungsi controller

    on<UsersFormIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    //pas mulai loading
    on<UsersFormLoadingEvent>((event, emit) {
      state.isLoading = true;

      //update UI seperti setstate() atau update()
      emit(state.copyWith());
    });

    //pas selesai loading
    on<UsersFormLoadingCompleteEvent>((event, emit) {
      state.isLoading = false;

      emit(state.copyWith());
    });

    on<UsersFormButtonSaveEvent>((event, emit) async {
      add(UsersFormLoadingEvent());

      User? user;

      //print(user);
      print("========");

      await Future.delayed(Duration(seconds: 2));

      print(state.user?.id);

      if (isEditMode) {
        await UserServices().update(
            id: state.user!.id!,
            user: User(
                userName: state.userName,
                address: state.address,
                dateOfBirth: state.dateOfBirth));
      } else {
        await UserServices().add(User(
            userName: state.userName,
            address: state.address,
            dateOfBirth: state.dateOfBirth));
      }

      //update UI
      emit(state.copyWith());

      add(UsersFormLoadingCompleteEvent());

      Get.back();
    });
  }

  @override
  void initState() {
    //initState event
    final User? user;

    if (isEditMode) {
      state.userName = state.user!.userName!;
      state.address = state.user!.address!;
      state.dateOfBirth = state.user!.dateOfBirth!;

      state.userName = state.user!.userName!;
      state.address = state.user!.address!;
      state.dateOfBirth = state.user!.dateOfBirth!;
    }

    print(isEditMode);
    print("=======");
    print(state.user?.id);
    print(isCreateMode);

    super.initState();
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }

  //buat fungsi getter ketika mau edit
  bool get isEditMode {
    return state.user != null; //item data argumen produknya ada
  }

  // //fungsi ketika modenya mau tambah produk
  bool get isCreateMode {
    return state.user == null; //item data argumen produknya tidak ada
  }
}
