import 'package:hyper_ui/core.dart';
part 'product_form_state.freezed.dart';

//ctrl+shift+s ke state, ctrl+shift+v ke view
//masukkin field field yang di dalam model ke dalam state bloc

//view -> state -> view -> state
@unfreezed
class ProductFormState with _$ProductFormState {
  factory ProductFormState({
    //taruh nilai defaultnya di @default(..)
    @Default('') String photo, //taruh nama fieldnya disini
    @Default('') String productName,
    @Default(0) double price, //kalau string g bisa dihitung harganya
    @Default('') String description,
    //kalau mau pakai set state loading, event loadingnya dihapus
    @Default(false) bool loading,
    Product? item, //utk update data, ambil item idnya
  }) = _ProductFormState;
}

//setelah beres buat state nilai fieldnya jalankan perintah
//flutter pub run build_runner watch --delete-conflicting-outputs (ctrl+shift+alt+b)