abstract class UserListEvent {}

class UserListIncrementEvent extends UserListEvent {}

class UserListLoadDataEvent extends UserListEvent {}

class UserListLoadingEvent extends UserListEvent {}

class UserListLoadngCompleteEvent extends UserListEvent {}

//delete users
class UserListDeleteEvent extends UserListEvent {
  //butuh parameter id
  final int id;

  //masukkin ke constructor
  UserListDeleteEvent({required this.id});
}
