import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cruds_bloc_nohp_api/presentation/product_form/service/product_service.dart';
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

    //controler loading event
    on<ProductListLoadingEvent>((event, emit) {
      //ketika pertama kali load, loadingnya true
      state.loading = true;

      emit(state.copyWith());
    });

    on<ProductListLoadEvent>((event, emit) async {
      //panggil loading event
      add(ProductListLoadingEvent());

      //jangan pakai ini, karena productnya enggak akan muncul
      //state.products = await ProductService().getProdcuts();

      var productItems = await ProductService().getProdcuts();
      state.items = productItems; //lempar data dari variabel ke state
      // digunakan untuk memancarkan (emit) update UI pada objek state yang baru
      //update statenya (sudah di emit di productcomplete)
      emit(state.copyWith());

      //print(productItems);

      //print(state.products.length);

      //await Future.delayed(Duration(seconds: 2));

      //panggil complete event
      add(ProductListLoadCompleteEvent());
    });

    on<ProductListLoadCompleteEvent>((event, emit) {
      //ketika selesai load
      state.loading = false;
      emit(state.copyWith());
    });

    on<ProductListDeleteEvent>((event, emit) async {
      //ketika selesai load
      //state.loading = true;

      await ProductService().delete(event.id);
      add(ProductListLoadEvent());

      //add(ProductListLoadingEvent()); //pakai ini jadi lebih lamaa

      //id nya didapatkan dari event, logic utk delete
      //await ProductService().delete(event.id);

      //emit(state.copyWith());

      //panggil load event, supaya data list produknya terupdate
      //add(ProductListLoadEvent());

      //add(ProductListLoadCompleteEvent());
    });
  }

  @override
  void initState() {
    //ketika halamannya awal kali dibuka, panggil fungsi load event
    add(ProductListLoadEvent()); //di init jangan pakai async await
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
