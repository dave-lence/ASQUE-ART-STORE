import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/components/trending_prod_list.dart';
import 'package:asque_art_store/models/product_model.dart';
import 'package:asque_art_store/providers/cart_provider.dart';
import 'package:asque_art_store/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
    this.product
  });

 final  Product? product;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  final products = context.read<CartProvider>();
  final product = products.productList;
  String cartLenght = "";

  setState(() {
    cartLenght = products.cart.length.toString();
  });

    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),

                  /// greetings text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Row(
                        children: <Widget>[
                          Text(
                            'Good morning',
                            style: TextStyle(
                              color: Color.fromARGB(255, 172, 113, 92),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Ibrahim',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: CartScreen(),
                                      duration: Duration(milliseconds: 500),
                                      type: PageTransitionType.bottomToTop));
                            },
                            icon:   Badge(
                              largeSize: Checkbox.width,
                              isLabelVisible: true,
                              label: Text('${cartLenght}'),
                              textColor: Colors.white,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                          
                          
                        ],
                      )
                    ],
                  ),

                  // search and notifications
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        height: 50,
                        child: CustomTextField(
                          fillColor: false,
                            iconName: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            controller: searchController,
                            hintText: 'Ex. nigerian art',
                            obscureText: false),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings_input_component,
                                color: Colors.white,
                                size: 30,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Badge(
                                largeSize: Checkbox.width,
                                isLabelVisible: true,
                                label: Text("3"),
                                textColor: Colors.white,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )),
                        ],
                      )
                    ],
                  ),

                  // Trending sections
                  const SizedBox(
                    height: 20,
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SrctionTile(
                        title: "Trending Products",
                      ),
                    ],
                  ),
                  TrendingProdList(
                      products: product
                          .where((prduct) => prduct.isTrending)
                          .toList()),

                  //art work
                  const SizedBox(
                    height: 20,
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SrctionTile(
                        title: "Art work",
                      ),
                    ],
                  ),
                  ProductList(
                      products: product
                          .where((product) => product.isArt)
                          .toList()),

                  SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SrctionTile(
                        title: "Sculpture",
                      ),
                    ],
                  ),
                  ProductList(
                      products: product
                          .where((product) => product.isSculpture)
                          .toList()),

                  SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SrctionTile(
                        title: "Collections",
                      ),
                    ],
                  ),
                  ProductList(
                      products: product
                          .where((product) => product.isArt)
                          .toList()),

                  SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SrctionTile(
                        title: "Fine Art",
                      ),
                    ],
                  ),
                  ProductList(
                      products: product
                          .where((product) => product.isFineArt)
                          .toList()),

                  SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SrctionTile(
                        title: "Photograph",
                      ),
                    ],
                  ),
                  ProductList(
                      products: product
                          .where((product) => product.isArt)
                          .toList()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
