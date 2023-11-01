import 'package:asque_art_store/components/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
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
                            onPressed: () {},
                            icon: const Badge(
                              largeSize: Checkbox.width,
                              isLabelVisible: true,
                              label: Text("3"),
                              textColor: Colors.white,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                border: Border.fromBorderSide(
                                    BorderSide(color: Colors.white)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.person_rounded,
                                  color: Colors.white,
                                  size: 20,
                                )),
                          )
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
                          child: CustomTextField(
                              iconName: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              controller: _searchController,
                              hintText: 'Ex. nigerian art',
                              obscureText: false)),
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
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      )
                    ],
                  ),

                  // Trending sections
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SrctionTile( title: "Trending Products",),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

