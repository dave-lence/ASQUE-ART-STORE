import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String prodName;
  final bool isArt;
  final List<String> imageUrls;
  final double price;
  final String isAvailable;
  final bool isTrending;

  Product({
    required this.id,
    required this.prodName,
    required this.isArt,
    required this.imageUrls,
    required this.price,
    required this.isAvailable,
    required this.isTrending,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        prodName,
        isArt,
        imageUrls,
        price,
        isAvailable,
        isTrending,
      ];

  static List<Product> products = [
    Product(
      id: '1',
      prodName: 'Swepes',
      isArt: true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1598614187854-26a60e982dc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/dO9A6mhSZZY
        'https://images.unsplash.com/photo-1598614187854-26a60e982dc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '2',
      prodName: 'Thumbs Up Thumbs Up',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1610873167013-2dd675d30ef4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=488&q=80', //https://unsplash.com/photos/Viy_8zHEznk
        'https://images.unsplash.com/photo-1610873167013-2dd675d30ef4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=488&q=80', //https://unsplash.com/photos/Viy_8zHEznk
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '3',
      prodName: 'Soda Thumbs Up',
      isArt: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/459458845/photo/set-of-drink-cans.webp?b=1&s=170667a&w=0&k=20&c=SGTIhQhHLv_pl13BiUQqvKrIqTyEfmzxeo6Ocn0f73M=', //https://unsplash.com/photos/5LIInaqRp5s
        'https://media.istockphoto.com/id/459458845/photo/set-of-drink-cans.webp?b=1&s=170667a&w=0&k=20&c=SGTIhQhHLv_pl13BiUQqvKrIqTyEfmzxeo6Ocn0f73M=', //https://unsplash.com/photos/5LIInaqRp5s
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '4',
      prodName: 'Fine art Thumbs Up',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1526424382096-74a93e105682?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/kcYXj4tBtes
        'https://images.unsplash.com/photo-1526424382096-74a93e105682?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/kcYXj4tBtes
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '5',
      prodName: 'Sculpture Thumbs Up',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '6',
      prodName: 'Hollandia Milk',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '7',
      prodName: 'Pepsi Thumbs Up',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '8',
      prodName: 'Mexican soda',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '9',
      prodName: 'Sculpture Thumbs Up',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '10',
      prodName: 'Green Smothies',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '11',
      prodName: 'Soft Drink #1',
      isArt: true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '12',
      prodName: 'Coca cola Thumbs Up',
      isArt: true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '13',
      prodName: 'Soft Drink Thumbs Up',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '14',
      prodName: 'Mango smothie',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '15',
      prodName: 'Modern sport casual shoe',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 10.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '16',
      prodName: 'Black red air jordan',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 20.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '17',
      prodName: 'Nike Air max Thumbs',
      isArt: true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 5.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '18',
      prodName: 'Grey blank T-shirt',
      isArt: true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 5.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '19',
      prodName: 'Blue T-shirt',
      isArt: true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 5.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '20',
      prodName: 'Grey crew T-shirt',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '21',
      prodName: 'Floral top Thumbs Up',
      isArt: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 6.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
  ];
}
