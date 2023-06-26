import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState>
    with _BlocLifecycle {
  ProductFormBloc() : super(ProductFormState()) {
    //ini satu fungsi controller
    on<ProductFormIncrementEvent>((event, emit) {
      emit(state.copyWith());
    });
    //=====
    //ketika loading baru berjalan
    on<ProductFormLoadingEvent>((event, emit) {
      state.loading = true;
      emit(state.copyWith());
    });

    //ketika selesai loading
    on<ProductFormLoadingCompleteEvent>((event, emit) {
      state.loading = false;
      emit(state.copyWith());
    });

    //fungsi ketika (event) tombol save diklik
    on<ProductFormButtonSaveEvent>((event, emit) async {
      //langsung copy with statenya aja
      //emit utk merubah aksi pada UI sekaligus mengirim data state
      //terus ke view button save

      //update dulu statenya
      //state.loading = true;

      //di bloc panggil event pakai add(nama_event)
      //mulai loading event
      add(ProductFormLoadingEvent()); //panggil loading Event

      //proses post (tambah) data
      //add nya diisi oleh nama model, masukkin selain field id
      await ProductService().add(Product(
        photo: state.photo, //fotonya ambil dari state.photo
        productName: state.productName,
        price: state.price, //price sama state.price harus sama sama double
        description: state.description,
      ));

      //tunggu dulu 2 detik]
      await Future.delayed(Duration(seconds: 2));

      //kalau sudah beres, loadingnya dimatikan
      //state.loading = false;

      //utk update state kosong pakai emit state copywith
      emit(state.copyWith());

      //panggil event selesai loading
      add(ProductFormLoadingCompleteEvent()); //selesai loading

      //jangan kirim data dulu pakai emit, kalau mau pakai event loading dulu
      //emit(state.copyWith()); //jangan pakai emit

      //navigasu ke halaman dashboard (halaman sebelumnya)
      Get.back();
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
