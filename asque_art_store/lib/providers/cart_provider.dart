import 'package:asque_art_store/models/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Product> products = Product.products;
  List<Product> _cart = [];
  List<Product> get productList => products;
  List<Product> get cart => _cart;

  void addToCart(Product productItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(productItem);
    }

    notifyListeners();
  }

  void removerFromCart(Product productItem) {
    _cart.remove(productItem);
    notifyListeners();
  }

  double calculateTotalPrice() {
    double totalPrice = 0.0;
    for (var product in _cart) {
      totalPrice += product.price;
    }
    return totalPrice.toDouble();
  }
}
