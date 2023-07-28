import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cruds_bloc_nohp_api/core.dart';

//utk inisiasi awalan memanggil fungsi ketika halaman apps dibuka
mixin _BlocLifecycle {
  void beforeInitState() {}
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

    //fungsi ketika (event) tombol save diklik
    on<ProductFormButtonSaveEvent>((event, emit) async {
      //(isCreateMode)

      // await ProductService().add(Product(
      //   photo: state.photo, //fotonya ambil dari state.photo
      //   productName: state.productName,
      //   price: state.price, //price sama state.price harus sama sama double
      //   description: state.description,
      // ));
      add(ProductFormLoadingEvent());

      await Future.delayed(const Duration(seconds: 2));

      ///kalau editmode dan bukan lagi editmode
      if (isEditMode) {
        await ProductService().update(
            id: state.item!.id!, //idnya sudah ada di dalam item
            item: Product(
                photo: state.photo,
                description: state.description,
                price: state.price,
                productName: state.productName));
      } else {
        await ProductService().add(Product(
          photo: state.photo, //fotonya ambil dari state.photo
          productName: state.productName,
          price: state.price, //price sama state.price harus sama sama double
          description: state.description,
        ));
      }

      //di bloc panggil event pakai add(nama_event)
      //mulai loading event

      //proses post (tambah) data
      //add nya diisi oleh nama model, masukkin selain field id
      // await ProductService().add(Product(
      //   photo: state.photo, //fotonya ambil dari state.photo
      //   productName: state.productName,
      //   price: state.price, //price sama state.price harus sama sama double
      //   description: state.description,
      // ));

      //tunggu dulu 2 detik]
      //await Future.delayed(Duration(seconds: 2));

      //kalau sudah beres, loadingnya dimatikan
      //state.loading = false;

      //utk update state kosong pakai emit state copywith
      emit(state.copyWith()); //utk update UI

      //panggil event selesai loading
      add(ProductFormLoadingCompleteEvent()); //selesai loading

      //jangan kirim data dulu pakai emit, kalau mau pakai event loading dulu
      //emit(state.copyWith()); //jangan pakai emit

      //navigasu ke halaman dashboard (halaman sebelumnya)
      Get.back();
    });

    //ketika selesai loading
    on<ProductFormLoadingCompleteEvent>((event, emit) {
      state.loading = false;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    final Product? item; //item berisi data products
    //print(isEditMode);
    //print(state.item);

    //utk menangkap nilai (data) ketika dalam mode edit
    //yang diterima dari listview (datanya wajib ada !)
    //state.nama_field = ambil data editnya dari item (model product)
    if (isEditMode) {
      state.photo = state.item!.photo!;
      state.productName = state.item!.productName!;
      state.description = state.item!.description!;
      state.price = state.item!.price!;
    }
    print(isEditMode);

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

  //buat fungsi getter ketika mau edit
  bool get isEditMode {
    return state.item != null; //item data argumen produknya ada
  }

  //fungsi ketika modenya mau tambah produk
  bool get isCreateMode {
    return state.item == null; //item data argumen produknya tidak ada
  }
}
