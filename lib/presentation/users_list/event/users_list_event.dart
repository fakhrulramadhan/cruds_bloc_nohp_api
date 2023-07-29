abstract class UsersListEvent {}

class UsersListIncrementEvent extends UsersListEvent {}

class UsersListLoadingEvent extends UsersListEvent {}

class UsersListLoadEvent extends UsersListEvent {}

class UsersListLoadingCompleteEvent extends UsersListEvent {}

class UsersListDeleteEvent extends UsersListEvent {
  //event ini butuh paremeter
  final int id;

  //buat constructornya
  UsersListDeleteEvent({required this.id});
}
