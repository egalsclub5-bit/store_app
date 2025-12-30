import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/constans.dart';

class ProductsServices {
  final Dio dio = Dio();
  Future<List<ProductModel>> getAllProduct() async {
    // final Response response = await dio.get('$basUrl/products');

    List<dynamic> data = await Api().get(url: '$basUrl/products');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
