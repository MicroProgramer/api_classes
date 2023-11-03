import 'package:api_classes/controllers/ecommerce_controller.dart';
import 'package:api_classes/controllers/hotels_controller.dart';
import 'package:api_classes/views/layouts/item_ecom_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenEcommerce extends StatelessWidget {
  const ScreenEcommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(EcommerceController());
    Get.put(HotelsController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce API"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            children: controller.products.map((element) => ItemEcomProduct(product: element)).toList(),
            alignment: WrapAlignment.spaceBetween,
            spacing: 20,
          ),
        ),
      ),
    );
  }
}
