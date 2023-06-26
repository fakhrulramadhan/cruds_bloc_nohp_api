import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/product_list_event.dart';
import '../state/product_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class ProductListBloc extends Bloc<ProductListEvent, ProductListState>
    with _BlocLifecycle {
  ProductListBloc() : super(ProductListState()) {
    on<ProductListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
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
