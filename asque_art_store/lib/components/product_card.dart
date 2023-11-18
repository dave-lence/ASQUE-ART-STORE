import 'package:another_flushbar/flushbar.dart';
import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/models/product_model.dart';
import 'package:asque_art_store/providers/favourite_provider.dart';
import 'package:asque_art_store/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});
  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
   void addToFavFunction() {  

      final products = context.read<FavProvider>();
      products.addToFav(widget.product);
     
      Flushbar(
        title: 'Success',
        message: 'Product succefully added to your Favourite collections',
        icon: Icon(Icons.favorite, color: Colors.red),
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
      )..show(context);
    } 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        padding: const EdgeInsets.all(5),
        //height: 250,
        width: 150,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(3, 5), blurRadius: 8)
            ],
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(
          top: 20,
          right: 10,
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.product.imageUrls.first,
                    width: 138,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                      child: IconButton(
                          onPressed: addToFavFunction,
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          )),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            172,
                            113,
                            92,
                          ),
                          borderRadius: BorderRadius.circular(20))),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.product.prodName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$${widget.product.price}',
                      style: const TextStyle(
                        color: Color.fromARGB(
                          255,
                          172,
                          113,
                          92,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                            child: ProductScreen(
                              product: widget.product
                            ),
                            duration: Duration(seconds: 1),
                            type: PageTransitionType.leftToRightWithFade,
                            alignment: Alignment.topCenter,
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomAppTheme().primary,
                      minimumSize: Size(double.infinity, 40)
                    ),
                    child: Text(
                      "View product",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
