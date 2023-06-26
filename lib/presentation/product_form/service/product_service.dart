import 'package:dio/dio.dart';

import '../../../model/product/product.dart';

class ProductService {
  //ambil daftar produk
  Future<List<Product>> getProdcuts() async {
    //ketik dio_get
    var response = await Dio().get(
      "https://capekngoding.com/bloc/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data; //mendapatkan response

    //setelah mendapatkan response, membutuhkan mapping
    //sudah jadi list of product
    List<Product> items =
        (obj["data"] as List).map((item) => Product.fromJson(item)).toList();

    return items; //mengembalikan (menampilkan nilai)
  }

  //buat fungsi tambah
  Future add(Product item) async {
    //ketik dio_post
    var response = await Dio().post(
      "https://capekngoding.com/bloc/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      //datanya dari model/product
      data: {
        "photo": item.photo, //itemnya sudah kepanggil otomatis dari model
        "product_name": item.productName,
        "price": item.price,
        "description": item.description
      },
    );
    Map obj = response.data;
  }

  //fungsi update, future dulu, masih pakai model product karena update data
  //update iitem id ({}) == untuk parameter
  Future update({
    required int id,
    required Product item,
  }) async {
    //ketik dio_post
    var response = await Dio().post(
      "https://capekngoding.com/bloc/api/products/${item.id}",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      //datanya dari model/product
      data: {
        "photo": item.photo, //itemnya sudah kepanggil otomatis dari model
        "product_name": item.productName,
        "price": item.price,
        "description": item.description
      },
    );
    Map obj = response.data;
  }

  //fungsi delete berdasarkan id
  Future delete(int id) async {
    //ketik dio_post
    var response = await Dio().post(
      "https://capekngoding.com/bloc/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      //datanya dari model/product
    );
    Map obj = response.data;
  }
}
