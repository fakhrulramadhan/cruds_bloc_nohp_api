abstract class UserFormEvent {}

class UserFormIncrementEvent extends UserFormEvent {}

class UserFormButtonSaveEvent extends UserFormEvent {}

class UserFormButtonUpdateEvent extends UserFormEvent {}

class UserFormLoadingEvent extends UserFormEvent {}

class UserFormLoadDataEvent extends UserFormEvent {}

class UserFormLoadingCompleteEvent extends UserFormEvent {}
