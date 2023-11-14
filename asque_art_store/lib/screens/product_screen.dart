import 'package:asque_art_store/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen(
      {super.key,
      required this.productImages,
      required this.isAvailable,
      required this.productName,
      required this.productPrice});
  final List<String> productImages;
  final String productName;
  final double productPrice;
  final String isAvailable;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  // Initialize with the index of the first image
  static int currentIndex = 0;
  String? dropDownValue = "Select Size";
  int qtyCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        forceMaterialTransparency: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // product image
              Stack(
                children: [
                  Container(
                    height: 300,
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentIndex = value;
                        });
                      },
                      controller: PageController(initialPage: currentIndex),
                      itemCount: widget.productImages.length,
                      itemBuilder: (context, index) {
                        return AspectRatio(
                          aspectRatio: 5 / 96,
                          child: Image.network(
                            widget.productImages[index],
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                      top: 30,
                      right: 5,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.share, color: Colors.white)),
                          const SizedBox(
                            width: 2,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.download,
                                  color: Colors.white)),
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              //product image indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotsIndicator(
                    dotsCount: widget.productImages.length,
                    position: currentIndex.toInt(),
                    decorator: DotsDecorator(
                      activeColor: CustomAppTheme()
                          .primary, // Customize the active dot color
                    ),
                  ),
                ],
              ),

              // product name and description
              Padding(
                padding: const EdgeInsets.all(20),
                child: RichText(
                    text: TextSpan(
                        style: const TextStyle(color: Colors.grey),
                        children: <TextSpan>[
                      TextSpan(
                          text: '${widget.productName}:',
                          style: TextStyle(
                              color: Colors.orange[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              '  Lorem ipsum dolor sit amet amore more Lorem ipsum dolor sit amet amore more Lorem ipsum dolor sit amet amore more')
                    ])),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(children: <Widget>[
                  const Text("Size:", style: TextStyle(color: Colors.white)),
                  const SizedBox(
                    width: 3,
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  //select size
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: CustomAppTheme().appBlack,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.fromBorderSide(BorderSide(
                            color: CustomAppTheme().primary, width: 2))),
                    child: Column(
                      children: [
                        DropdownButton(
                          hint: Text(
                            "Select Size",
                            style: TextStyle(color: CustomAppTheme().appWhite),
                          ),
                          value: dropDownValue != "Select Size"
                              ? dropDownValue
                              : null,
                          isDense: true,
                          borderRadius: BorderRadius.circular(2),
                        
                          iconEnabledColor: CustomAppTheme().appWhite,
                          underline: null,
                          dropdownColor: CustomAppTheme().appBlack,
                          elevation: 8,
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: CustomAppTheme().primary,
                          ),
                          items: [
                            '40cm x 30cm',
                            '40cm x 80cm',
                            '60cm x 40cm',
                            '80 x 60cm',
                          ]
                              .map<DropdownMenuItem<String>>(
                                  (String item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                              color: CustomAppTheme().appWhite),
                                        ),
                                      ))
                              .toList(),
                          onChanged: (_value) {
                            setState(() {
                              dropDownValue = _value;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ]),
              ),

              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    const TextSpan(
                        text: "Artist:  ",
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                        text: "Christien Eriksen",
                        style: TextStyle(color: Colors.orange[800]))
                  ]))),

              // availability
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    const TextSpan(
                        text: "Availability:  ",
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                        text: widget.isAvailable,
                        style: TextStyle(color: Colors.orange[800]))
                  ]))),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    const TextSpan(
                        text: "Price:  ",
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                        text: '\$${widget.productPrice}',
                        style: TextStyle(color: Colors.orange[800]))
                  ]))),

              // cart number
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: <Widget>[
                  const Text("Quantiy:", style: TextStyle(color: Colors.white)),
                  const SizedBox(
                    width: 3,
                  ),
                  IconButton(
                      onPressed: () {
                        if(qtyCount == 0) {
                          return;
                        } else {
                        setState(() {
                         qtyCount = qtyCount - 1;
                        });
                        }
                      },
                      icon: const Icon(
                        Icons.remove_circle_sharp,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                   Text(
                    qtyCount.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          qtyCount = qtyCount + 1;
                        });
                      },
                      icon: const Icon(
                        Icons.add_circle_sharp,
                        color: Colors.white,
                      )),
                ]),
              ),

              //Varaities
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(children: <Widget>[
                  const Text("Varieties:",
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(
                    width: 8,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      "assets/art-1.jpg",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      "assets/art-1.jpg",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      "assets/art-1.jpg",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
              ),

              Container(
                margin: const EdgeInsets.only(top: 60),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomAppTheme().primary,
                        minimumSize: const Size(double.infinity, 40),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
