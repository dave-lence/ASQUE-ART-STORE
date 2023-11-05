import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/models/product_model.dart';
import 'package:flutter/material.dart';



class TrendingProdList extends StatelessWidget {
  const TrendingProdList({
    super.key,
    required this.products
  });
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right:3),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 20),
           itemCount: products.length,
           shrinkWrap: true,
           scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return TrendingProdCard(product: products[index]);
          }),
      ),
    );
  }
}

