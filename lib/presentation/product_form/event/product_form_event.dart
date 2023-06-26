abstract class ProductFormEvent {}

class ProductFormIncrementEvent extends ProductFormEvent {}

//perlu menambahkan event ketika tombolnya diklik
class ProductFormButtonSaveEvent extends ProductFormEvent {}

//event setelah save ada loadingnya dulu
class ProductFormLoadingEvent extends ProductFormEvent {}

//event setelah loadingnya selesai
class ProductFormLoadingCompleteEvent extends ProductFormEvent {}
