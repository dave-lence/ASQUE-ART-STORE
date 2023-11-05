import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/config/theme.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.grey.shade800,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                     CartCard(),
                     CartCard(),
                     CartCard(),
                     CartCard(),
                     CartCard(),
                     
                    ],
                  ),
                ),

                // devilery location and summary
                
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 440,
                    margin: const EdgeInsets.only(top: 30),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.all(10),
                            height: 90,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Delivery Address",
                                  style: TextStyle(
                                      color: Colors.orange.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "141 Grace street",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          "Lekki, Lagos, Nigeria",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Change address",
                                      style: TextStyle(
                                          color: Colors.orange.shade600),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                        /// summary
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Summary",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Arthdal Chronicles",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '\$2,000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Arthdal Chronicles",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '\$2,000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Arthdal Chronicles",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '\$2,000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Tax & Fee",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '\$10.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Total",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '\$21,000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CustomAppTheme().primary,
                                minimumSize: const Size(double.infinity, 40),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Check out",
                                style: TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
      
    );
  }
}
