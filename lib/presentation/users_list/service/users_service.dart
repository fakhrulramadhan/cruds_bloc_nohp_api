import 'package:cruds_bloc_nohp_api/model/user/user.dart';
import 'package:dio/dio.dart';

class UserServices {
  //,mendapatkan semua data produk
  Future<List<User>> getUsers() async {
    var response =
        await Dio().get("https://capekngoding.com/6289607405728/api/users",
            options: Options(
              headers: {"Content-Type": "application/json"},
            ));

    Map obj = response.data;

    //setelah mendapatkan response, lakukan mapping
    List<User> items =
        (obj["data"] as List).map((item) => User.fromJson(item)).toList();

    return items;
  }

  //fungsi tambah, butuh model product (dijadikan sebagai item)
  Future add(User item) async {
    try {
      var response = await Dio().post(
          "https://capekngoding.com/6289607405728/api/users",
          options: Options(headers: {"Content-Type": "application/json"}),
          data: {
            "user_name": item.userName,
            "address": item.address,
            "date_of_birth": item.dateOfBirth,
          });

      Map obj = response.data;
    } catch (e) {
      if (e is DioException) {
        List<String>? newlocation = e.response?.headers['location'];
        print(newlocation);
      }
    }
  }

  Future update({required int id, required User item}) async {
    try {
      var response = await Dio().post(
          "https://capekngoding.com/6289607405728/api/users/$id",
          options: Options(headers: {"Content-Type": "application/json"}),
          data: {
            "user_name": item.userName,
            "address": item.address,
            "date_of_birth": item.dateOfBirth,
          });

      //Map obj = response.data;
    } catch (e) {
      if (e is DioException) {
        List<String>? newlocation = e.response?.headers['location'];
        print(newlocation);
      }
    }
  }

  Future delete({required int id}) async {
    try {
      var response = await Dio().delete(
          "https://capekngoding.com/6289607405728/api/users/$id",
          options: Options(headers: {"Content-Type": "application/json"}));

      Map obj = response.data;
    } catch (e) {
      if (e is DioException) {
        List<String>? newlocation = e.response?.headers['location'];
        print(newlocation);
      }
    }
  }
}
