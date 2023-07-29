import 'package:cruds_bloc_nohp_api/presentation/users_list/state/users_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../service/user_service.dart';
import '../event/users_list_event.dart';

//Users

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class UsersListBloc extends Bloc<UsersListEvent, UsersListState>
    with _BlocLifecycle {
  UsersListBloc() : super(UsersListState()) {
    //fungsi ketika loading user
    on<UsersListLoadingEvent>((event, emit) {
      //ubah nilai is loading menjadi true
      state.isLoading = true;

      emit(state.copyWith()); //update ui
    });

    on<UsersListLoadingCompleteEvent>((event, emit) {
      state.isLoading = false;

      emit(state.copyWith());
    });

    on<UsersListLoadEvent>((event, emit) async {
      //add(UserListLoadingEvent()); //tampilin loading dulu (fungsi userloading)

      //panggil service
      var users = await UserServices().getUsers();

      //state users diisi oleh users
      state.users = users;

      emit(state.copyWith());

      add(UsersListLoadingCompleteEvent());
    });

    on<UsersListDeleteEvent>((event, emit) async {
      add(UsersListLoadingEvent());

      await UserServices().delete(id: event.id);

      //load data user, cara panggil event pakai add
      add(UsersListLoadEvent());

      add(UsersListLoadingCompleteEvent());
    });
  }

  @override
  void initState() {
    //ketika halamannya awal kali dibuka, panggil fungsi load event
    add(UsersListLoadEvent()); //di init jangan pakai async await
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
