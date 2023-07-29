import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cruds_bloc_nohp_api/model/product/product.dart';
part 'product_list_state.freezed.dart';

@unfreezed
class ProductListState with _$ProductListState {
  factory ProductListState({
    @Default(0) int counter,
    @Default([]) List<Product> items,
    @Default(false) bool loading, //buat state loadingnya
  }) = _ProductListState;
}
