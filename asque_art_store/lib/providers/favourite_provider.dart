import 'package:asque_art_store/components/product_list.dart';
import 'package:asque_art_store/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavProvider extends ChangeNotifier {
  List<Product> products = Product.products;
  List<Product> _fav = [];
  List<Product> get productList => products;
  List<Product> get fav => _fav;

  void addToFav(Product productItem) {
    if (products.any((findP) => findP.id != productItem.id)) {
      _fav.add(productItem);
    }
    Widget build(BuildContext context) {
      return AlertDialog(
        title: Text('Error adding product'),
        content: Text('Can\'t a product that already exits'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'))
        ],
      );
    }

    notifyListeners();
  }

  void removerFromFav(Product productItem) {
    _fav.remove(productItem);
    notifyListeners();
  }

 
}
