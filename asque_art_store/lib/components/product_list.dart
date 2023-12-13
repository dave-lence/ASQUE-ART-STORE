import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/models/categories_model.dart';
import 'package:asque_art_store/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList(
      {super.key,
      required this.products,
      this.category});
  final List<Product> products;
 
  final Category? category;
  //final Product? products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3,),
      child: SizedBox(
        height: 310,
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 20),
            itemCount: products.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            }),
      ),
    );
  }
}
