import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/product/product.dart';
part 'product_list_state.freezed.dart';

@unfreezed
class ProductListState with _$ProductListState {
  factory ProductListState({
    @Default(0) int counter,
    @Default([]) List<Product> products,
    @Default(false) bool loading, //buat state loadingnya
  }) = _ProductListState;
}
