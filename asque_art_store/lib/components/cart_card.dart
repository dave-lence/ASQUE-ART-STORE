import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
  });

  @override
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
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_circle_sharp,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    '2',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IconButton(
                      onPressed: () {},
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
