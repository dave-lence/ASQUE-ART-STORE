import 'package:another_flushbar/flushbar.dart';
import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/models/product_model.dart';
import 'package:asque_art_store/providers/cart_provider.dart';
import 'package:asque_art_store/screens/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void removeFromFunction(Product product, BuildContext context) {
    // instance of the CartProvider
    final products = context.read<CartProvider>();

    // removing product from cart
    if (products.cart.length > 0) {
      products.removerFromCart(product);
      setState(() {});
    }

    Flushbar(
      title: 'Success',
      message: 'Product succefully removed from cart',
      icon: Icon(Icons.delete_sweep_outlined, color: Colors.greenAccent),
      flushbarStyle: FlushbarStyle.FLOATING,
      duration: Duration(seconds: 3),
      backgroundColor: CustomAppTheme().appBlack,
      flushbarPosition: FlushbarPosition.TOP,
      forwardAnimationCurve: Curves.bounceInOut,
      reverseAnimationCurve: Curves.bounceIn,
      borderRadius: BorderRadius.circular(5),
      leftBarIndicatorColor: CustomAppTheme().primary,
      margin: EdgeInsets.all(20),
      titleColor: CustomAppTheme().primary,
      animationDuration: Duration(seconds: 1),
      boxShadows: [
        BoxShadow(
            offset: Offset(5, 10),
            color: CustomAppTheme().appBlack,
            blurRadius: 8)
      ],
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final totalPrice = cartProvider.calculateTotalPrice();
    return Consumer<CartProvider>(
      builder: (context, value, child) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Cart page",
            style: TextStyle(color: CustomAppTheme().appWhite),
          ),
          backgroundColor: Colors.grey.shade800,
          automaticallyImplyLeading: true,
        ),
        backgroundColor: Colors.grey.shade800,
        body: cartProvider.cart.isEmpty
            ? Center(
                child: Image.asset(
                  'assets/cartanime.gif',
                  width: 300,
                  height: 300,
                ),
              )
            : ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Product product = value.cart[index];
                  final String productImage = product.imageUrls.first;
                  final String productName = product.prodName;
                  final double productPrice = product.price;

                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),

                    //  height: 116,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(4, 5),
                              blurRadius: 8)
                        ],
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      trailing: IconButton(
                          onPressed: () => removeFromFunction(product, context),
                          icon: Icon(
                            Icons.delete,
                            color: Colors.orange.shade600,
                          )),
                      title: Text(
                        productName,
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text('\$${productPrice}',
                          style: TextStyle(color: Colors.grey.shade400)),
                      leading: Image.network(
                        productImage,
                        width: 83,
                        height: 83,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
        bottomNavigationBar: Container(
          height: 170,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Summary",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Tax & Fee:",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$10.00',
                    style: TextStyle(color: Colors.orange.shade600),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Total",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      //'\$21,000',
                      '\$${totalPrice.toString()}',
                      style: TextStyle(color: Colors.orange.shade600),
                    )
                  ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomAppTheme().primary,
                      minimumSize: const Size(double.infinity, 40),
                    ),
                    onPressed: () {
                      if (totalPrice == 0.0 || cartProvider.cart.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: CustomAppTheme().primary,
                              elevation: 10,
                              icon: Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Empty Cart',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: Text(
                                'You need to have an item in your cart before you proceed',
                                style: TextStyle(color: Colors.white),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: CheckoutScreen(
                                  total: totalPrice,
                                ),
                                type: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.bounceIn));
                      }
                    },
                    child: const Text(
                      "Check out",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
