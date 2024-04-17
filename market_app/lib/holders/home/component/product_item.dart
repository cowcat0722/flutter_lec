import 'package:flutter/material.dart';
import 'package:market_app/holders/home/component/product_detail.dart';

import '../../../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0),
          ProductDetail(product: product),
        ],
      ),
    );
  }
}
