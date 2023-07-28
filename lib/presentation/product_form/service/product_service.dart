import 'package:dio/dio.dart';

import '../../../model/product/product.dart';

//flutter: [https://capekngoding.com:4443/bloc/api/products]

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

  //flutter: [https://capekngoding.com:4443/bloc/api/products]

  //buat fungsi tambah
  Future add(Product item) async {
    //ketik dio_post

    try {
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
    } catch (e) {
      if (e is DioException) {
        List<String>? newLocation = e.response?.headers['location'];
        print(newLocation);
      }
    }
  }

  // Future add(Product item) async {
  //   //ketik dio_post
  //   var response = await http.post(
  //     Uri.parse("https://capekngoding.com/bloc/api/products"),
  //     headers: {},
  //     body: {
  //       "photo": item.photo, //itemnya sudah kepanggil otomatis dari model
  //       "product_name": item.productName,
  //       "price": item.price,
  //       "description": item.description
  //     },
  //   );
  //   // Map obj = response.data;
  //   //Map obj = response.body.toString();
  // }

  //fungsi update, future dulu, masih pakai model product karena update data
  //update iitem id ({}) == untuk parameter
  // Future update({
  //   required int id,
  //   required Product item,
  // }) async {
  //   try {
  //     //ketik dio_post
  //     var response = await Dio().put(
  //       "https://capekngoding.com:4443/bloc/api/products/${item.id}",
  //       options: Options(
  //         headers: {
  //           "Content-Type": "application/json",
  //         },
  //       ),
  //       //datanya dari model/product
  //       data: {
  //         "photo": item.photo, //itemnya sudah kepanggil otomatis dari model
  //         "product_name": item.productName,
  //         "price": item.price,
  //         "description": item.description
  //       },
  //     );
  //     Map obj = response.data;
  //   } catch (e) {
  //     if (e is DioException) {
  //       List<String>? newLocation = e.response?.headers['location'];
  //       print(newLocation);
  //     }
  //   }
  // }

  Future update({
    required int id,
    required Product item,
  }) async {
    await Dio().post(
      "https://capekngoding.com/bloc/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "photo": item.photo,
        "product_name": item.productName,
        "price": item.price,
        "description": item.description,
      },
    );
  }

  //fungsi delete berdasarkan id
  Future delete(int id) async {
    //ketik dio_post
    var response = await Dio().delete(
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
