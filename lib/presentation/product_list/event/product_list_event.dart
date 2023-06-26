abstract class ProductListEvent {}

class ProductListIncrementEvent extends ProductListEvent {}

class ProductListLoadingEvent extends ProductListEvent {}

class ProductListLoadEvent extends ProductListEvent {}

class ProductListLoadCompleteEvent extends ProductListEvent {}

class ProductListDeleteEvent extends ProductListEvent {
  //event ini butuh paremeter
  final int id;

  //buat constructornya
  ProductListDeleteEvent({required this.id});
}
