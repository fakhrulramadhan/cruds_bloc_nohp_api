import 'package:cruds_bloc_nohp_api/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class UserFormBloc extends Bloc<UserFormEvent, UserFormState>
    with _BlocLifecycle {
  UserFormBloc() : super(UserFormState()) {
    on<UserFormIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    //pas mulai loading
    on<UserFormLoadingEvent>((event, emit) {
      state.isLoading = true;

      //update UI seperti setstate() atau update()
      emit(state.copyWith());
    });

    //pas selesai loading
    on<UserFormLoadingCompleteEvent>((event, emit) {
      state.isLoading = false;

      emit(state.copyWith());
    });

    on<UserFormButtonSaveEvent>((event, emit) async {
      add(UserFormLoadingEvent());

      await Future.delayed(Duration(seconds: 2));

      if (isEditMode) {
        await UserServices().update(
            id: state.user!.id!,
            item: User(
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

      add(UserFormLoadingCompleteEvent());

      Get.back();
    });
  }

  @override
  void initState() {
    //initState event
    super.initState();

    final User? user;

    if (isEditMode) {
      state.userName = state.user!.userName!;
      state.address = state.user!.address!;
      state.dateOfBirth = state.user!.dateOfBirth!;
    }

    print(isEditMode);
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  bool get isEditMode {
    return state.user != null;
  }

  bool get isCreateMode {
    return state.user == null;
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }
}
