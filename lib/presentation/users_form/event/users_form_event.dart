abstract class UsersFormEvent {}

class UsersFormIncrementEvent extends UsersFormEvent {}

//perlu menambahkan event ketika tombolnya diklik
class UsersFormButtonSaveEvent extends UsersFormEvent {}

//event setelah save ada loadingnya dulu
class UsersFormLoadingEvent extends UsersFormEvent {}

//event setelah loadingnya selesai
class UsersFormLoadingCompleteEvent extends UsersFormEvent {}

class UserFormButtonUpdateEvent extends UsersFormEvent {}
