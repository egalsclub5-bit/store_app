import 'package:dio/dio.dart';
import 'package:store_app/constans.dart';
import 'package:store_app/helper/api.dart';

class GatAllCategoryServices {
  final Dio dio = Dio();
  Future<List<dynamic>> getcategoryProduct() async {
    List<dynamic> data = await Api().get(url: '$basUrl/products/categories');
    return data;
  }
}
