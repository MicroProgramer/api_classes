import 'package:api_classes/models/product.dart';
import 'package:api_classes/views/screens/screen_ecom_product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ItemEcomProduct extends StatelessWidget {
  Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(ScreenEcomProductDetails(product: product));
      },
      child: Stack(
        children: [
          Container(
            width: Get.width * .4,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: .01, color: Colors.grey.withOpacity(.3))],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: product.id.toString(),
                  child: ClipRRect(
                    child: Image.network(product.thumbnail),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: product.rating ?? 0,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                    ),
                    Text("(${product.rating})"),
                  ],
                ),
                Text(
                  product.category,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  product.title,
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      "\$${product.price.toString()}",
                      style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "\$${product.discountedPrice}",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: Container(
              child: Text(
                "-${product.discountPercentage.toString()}%",
                style: TextStyle(color: Colors.white),
              ),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ItemEcomProduct({
    required this.product,
  });
}
