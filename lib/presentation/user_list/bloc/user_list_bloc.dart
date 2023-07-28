import 'package:cruds_bloc_nohp_api/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class UserListBloc extends Bloc<UserListEvent, UserListState>
    with _BlocLifecycle {
  UserListBloc() : super(UserListState()) {
    //fungsi controller user tambah couunter
    on<UserListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    //fungsi ketika loading user
    on<UserListLoadingEvent>((event, emit) {
      //ubah nilai is loading menjadi true
      state.isLoading = true;

      emit(state.copyWith()); //update ui
    });

    on<UserListLoadngCompleteEvent>((event, emit) {
      state.isLoading = false;

      emit(state.copyWith());
    });

    on<UserListLoadDataEvent>((event, emit) async {
      //add(UserListLoadingEvent()); //tampilin loading dulu (fungsi userloading)

      //panggil service
      var users = await UserServices().getUsers();

      //state users diisi oleh users
      state.users = users;

      emit(state.copyWith());

      add(UserListLoadngCompleteEvent());
    });

    on<UserListDeleteEvent>((event, emit) async {
      add(UserListLoadingEvent());

      await UserServices().delete(id: event.id);

      //load data user, cara panggil event pakai add
      add(UserListLoadDataEvent());

      add(UserListLoadngCompleteEvent());
    });
  }

  @override
  void initState() {
    add(UserListLoadDataEvent()); //event yang pertama kali dijalanin

    //initState event
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
}
