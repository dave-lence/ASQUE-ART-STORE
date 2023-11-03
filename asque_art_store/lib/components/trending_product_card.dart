import 'package:asque_art_store/models/product_model.dart';
import 'package:flutter/material.dart';

class TrendingProdCard extends StatelessWidget {
  const TrendingProdCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: 220,
         height: 80,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 172, 113, 92),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
                child: Text(
              product.prodName.substring(0, 10) + "...",
              textAlign: TextAlign.center,
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            )),
            const SizedBox(
              width: 24,
            ),
            Container(
                height: 70,
                width: 81,
                child: Image.network(
                  product.imageUrls.first,
                  fit: BoxFit.cover,
                ))
          ],
        ),
      ),
    );
  }
}
