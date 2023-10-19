import 'dart:convert';

import 'package:api_classes/models/product.dart';
import 'package:api_classes/utils/constants.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class EcommerceController extends GetxController {
  RxList<Product> products = RxList([]);

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var response = await http.get(Uri.parse('$baseEcommerceUrl/products'));
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    var productsListJson = jsonResponse['products'] as List<dynamic>;
    products.value = productsListJson.map((e) => Product.fromMap(e as Map<String, dynamic>)).toList();
    print(products.length);
  }
}
