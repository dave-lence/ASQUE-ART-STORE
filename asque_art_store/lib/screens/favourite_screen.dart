import 'package:asque_art_store/providers/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/models/product_model.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  void removeFromFavFunction(Product product, BuildContext context) {
    // instance of the CartProvider
    final products = context.read<FavProvider>();

    // removing product from cart
    if (products.fav.length > 0) {
      products.removerFromFav(product);
      setState(() {});
    }

    Flushbar(
      title: 'Success',
      message: 'Product succefully removed from your favourite collection',
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
     final favProvider = Provider.of<FavProvider>(context);
    return Consumer<FavProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Favourite page",
            style: TextStyle(color: CustomAppTheme().appWhite),
          ),
          backgroundColor: Colors.grey.shade800,
        ),
        backgroundColor: Colors.grey.shade800,
        body:favProvider.fav.isEmpty
            ? Center(
                child: Image.asset(
                  'assets/faveAnime.gif',
                  width: 300,
                  height: 300,
                ),
              )
            : ListView.builder(
            itemCount: value.fav.length,
            itemBuilder: (context, index) {
              final Product product = value.fav[index];
              final String productImage = product.imageUrls.first;
              final String productName = product.prodName;
              final double productPrice = product.price;
              return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),

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
                      onPressed: () => removeFromFavFunction(product, context),
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
      ),
    );
  }
}
