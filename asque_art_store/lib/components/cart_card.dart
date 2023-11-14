import 'package:asque_art_store/models/prefrences_service.dart';
import 'package:flutter/material.dart';

class CartCard extends StatefulWidget {
  const CartCard({
    super.key,
  });

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {

  int qtyCount = 0;
  PreferencesService _preferences = PreferencesService();

  @override
   void initState() {
    super.initState();
    // Load the count from SharedPreferences when the page initializes
    loadCount();
  }

  void loadCount() {
 
    setState(() {
      qtyCount = _preferences.getCartCount() ?? 0;
    });
  }
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      height: 116,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            color: Colors.black, offset: Offset(4, 5), blurRadius: 8)
      ], color: Colors.grey.shade800, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/art-1.jpg",
              width: 83,
              height: 83,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Product name",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "SIZE",
                style: TextStyle(color: Colors.grey.shade400),
              ),
              const Text(
                "price",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        if(qtyCount == 0){
                          return;
                        }else{

                        setState(() {
                          qtyCount--;
                        });
                        _preferences.setCartCount(qtyCount);
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
                      onPressed: () async {
                        setState(() {
                          qtyCount++;
                          
                        });
                        await _preferences.setCartCount(qtyCount);
                      },
                      icon: const Icon(
                        Icons.add_circle_sharp,
                        color: Colors.white,
                      )),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.orange.shade600,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
