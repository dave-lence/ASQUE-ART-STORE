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
  static String selectedDropdown = 'select';

  

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
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(5),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.orange.shade800,width: 1
                        )
                      )
                    ),
                  child: const Text("Select size", style: TextStyle(color: Colors.white),),
                  )
                ]),
                ),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    const TextSpan(
                        text: "Price:  ",
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                        text: '\$${widget.productPrice}',
                        style: TextStyle(color: Colors.orange[800]))
                  ]))),
                  
            ],
          ),
        ),
      ),
    );
  }
}
