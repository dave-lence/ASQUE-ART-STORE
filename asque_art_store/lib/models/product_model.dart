import 'dart:math';

import 'package:equatable/equatable.dart';

class Product extends Equatable { 
  final String id;
  final String prodName;
  final bool isArt;
  final List<String> imageUrls;
  final double price;
  final String isAvailable;
  final bool isTrending;
  final bool isFineArt;
  final bool isSculpture;

  var random = Random();
  late var randomNumber;

  Product({
    required this.id,
    required this.prodName,
    required this.isArt,
    required this.imageUrls,
    required this.price,
    required this.isAvailable,
    required this.isTrending,
    required this.isFineArt,
    required this.isSculpture,
  }) {
    randomNumber = random.nextInt(1000000);
  }

  String getRandomArtUrl() {
    return 'https://source.unsplash.com/random/?art&randomNumber=$randomNumber';
  }

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
        isFineArt,
        isSculpture,
      ];

  static List<Product> products = [
    Product(
      id: '1',
      prodName: 'Anxiety of Horror',
      isArt: true,
      isFineArt: false,
      isSculpture: false,
      imageUrls: [
        'https://source.unsplash.com/random/?art&randomNumber=1',
        'https://source.unsplash.com/random/?art&randomNumber=10',
        'https://source.unsplash.com/random/?art&randomNumber=5',
      ],
      price: 100.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '2',
      prodName: 'Recognition of Brutality',
      isArt: false,
      isFineArt: false,
      isSculpture: true,
      imageUrls: [
        'https://source.unsplash.com/random/?sculpture&randomNumber=10',
        'https://source.unsplash.com/random/?sculpture&randomNumber=1',
        'https://source.unsplash.com/random/?sculpture&randomNumber=19',
      ],
      price: 200.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '3',
      prodName: 'Relief of Patience',
      isArt: false,
      isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/1298984548/photo/indian-women-twist-silk-cloth.webp?b=1&s=170667a&w=0&k=20&c=YaV3Ue30GIVYp65vB98oN9KW_P2zTwm4IOcksNYZeU0=', //https://unsplash.com/photos/5LIInaqRp5s
        'https://media.istockphoto.com/id/117307939/photo/one-indian-senior-woman-artist-working-on-her-painting.webp?b=1&s=170667a&w=0&k=20&c=6E4lp_coImEXk-u7gmp_Y3yrvdz2HBHPJtlKeyq3DPo=', //https://unsplash.com/photos/5LIInaqRp5s
      ],
      price: 2000.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '4',
      prodName: 'Electric Fight',
      isArt: false,
      isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/157579199/photo/bundi-palace-painting-from-rajasthan-india.webp?b=1&s=170667a&w=0&k=20&c=o7HvUfTVyf9m7q4iAHtShvfol0QgIk_SFknyB9ORMi0=', //https://unsplash.com/photos/kcYXj4tBtes
        'https://media.istockphoto.com/id/974614454/photo/abstract-mandala-graphic-design-background.webp?b=1&s=170667a&w=0&k=20&c=GhGKBiCwZn0NswtHkfxi_fanYIIUwvz824VyjOOIG44=', //https://unsplash.com/photos/kcYXj4tBtes
      ],
      price: 589.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '5',
      prodName: 'Profiles of Generosity',
      isArt: false,
      isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YXJ0fGVufDB8fDB8fHww', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1515405295579-ba7b45403062?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGFydHxlbnwwfHwwfHx8MA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 312.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '6',
      prodName: 'Goal of Birth',
      isArt: false,
      isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1537632083056-f557a4e1e01f?auto=format&fit=crop&q=80&w=1374&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/1224007643/photo/freeze-motion-of-colorful-color-powder-exploding-on-white-background-paint-holi-indian.webp?s=170667a&w=0&k=20&c=8MZYGtPx3xtLyv5bqvlJIy6Bi-_tX1Kgn2ZWneIC8OM=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 100.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '7',
      prodName: 'Justice',
      isArt: false,
      isFineArt: false,
      isSculpture: true,
      imageUrls: const [
        'https://source.unsplash.com/random/?sculpture&randomNumber=2',
        'https://source.unsplash.com/random/?sculpture&randomNumber=3',
        'https://source.unsplash.com/random/?sculpture&randomNumber=29',
      ],
      price: 2000.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '8',
      prodName: 'Exasperated Slave',
      isArt: false,
      isFineArt: false,
      isSculpture: true,
      imageUrls: const [
        'https://source.unsplash.com/random/?sculpture&randomNumber=110',
        'https://source.unsplash.com/random/?sculpture&randomNumber=132',
        'https://source.unsplash.com/random/?sculpture&randomNumber=190',
      ],
      price: 250.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '9',
      prodName: 'Inventions of Childhood',
      isArt: false,
      isFineArt: false,
      isSculpture: true,
      imageUrls: const [
        'https://source.unsplash.com/random/?sculpture&randomNumber=11',
        'https://source.unsplash.com/random/?sculpture&randomNumber=12',
        'https://source.unsplash.com/random/?sculpture&randomNumber=129',
      ],
      price: 700.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '10',
      prodName: 'Chains',
      isArt: false,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1482160549825-59d1b23cb208?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGFydHxlbnwwfHwwfHx8MA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1545989253-02cc26577f88?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGFydHxlbnwwfHwwfHx8MA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 490.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '11',
      prodName: 'Merciful Switch',
      isArt: true,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://source.unsplash.com/random/?art&randomNumber=1000',
        'https://source.unsplash.com/random/?art&randomNumber=110',
        'https://source.unsplash.com/random/?art&randomNumber=500',
      ],
      price: 8000.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '12',
      prodName: 'Wonder of Pleasure',
      isArt: true,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
       'https://source.unsplash.com/random/?art&randomNumber=120',
        'https://source.unsplash.com/random/?art&randomNumber=100',
        'https://source.unsplash.com/random/?art&randomNumber=52',
      ],
      price: 1200.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '13',
      prodName: 'Desire',
      isArt: false,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1561214115-f2f134cc4912?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFydHxlbnwwfHwwfHx8MA%3D%3D'
            'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 220.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '14',
      prodName: 'Doll of Authority',
      isArt: false,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/924084204/photo/childrens-drawing-snail-crawling-on-yellow-carpet.jpg?s=612x612&w=0&k=20&c=k69CUSilwl8l6Q86XkU7GrlKg_5cUH3VznCfD3tQ9sU=', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/92042670/photo/oil-colors-painting.jpg?s=612x612&w=0&k=20&c=5OuLfjRQvLuTmUc914YSK6fZdthmSvsXOtSooAcKefU=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 3070.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '15',
      prodName: 'Dust of Parenthood',
      isArt: false,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1615184697985-c9bde1b07da7?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1523877661038-d7106199e2ae?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 1000.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '16',
      prodName: 'Diligent Despair',
      isArt: false,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/1226184141/vector/portrait-of-a-cat-with-a-bow-gouache-illustration.webp?s=170667a&w=0&k=20&c=-TUDp_puaOXQbX1OUXadvV25-3sBLTkYQkUMbTgSQZA=', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/529370241/vector/landscape-with-white-church.webp?s=170667a&w=0&k=20&c=0MH_9fpysOm0IqorG37Ngj5EDZ4rm7_Ct5t0OV-rwyM=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2020.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '17',
      prodName: 'Frivolous Animal',
      isArt: true,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://source.unsplash.com/random/?art&randomNumber=106',
        'https://source.unsplash.com/random/?art&randomNumber=188',
        'https://source.unsplash.com/random/?art&randomNumber=12',
      ],
      price: 5000.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '18',
      prodName: 'Lesson',
      isArt: false,
      isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://source.unsplash.com/random/?painting&randomNumber=10',
        'https://source.unsplash.com/random/?fineart&randomNumber=1',
        'https://source.unsplash.com/random/?drawing&randomNumber=19',
      ],
      price: 1500.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '19',
      prodName: 'Permission of Evil',
      isArt: false,
      isFineArt: false,
      isSculpture: true,
      imageUrls: const [
        'https://source.unsplash.com/random/?sculpture&randomNumber=190',
        'https://source.unsplash.com/random/?sculpture&randomNumber=112',
        'https://source.unsplash.com/random/?sculpture&randomNumber=199',
      ],
      price: 520.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '20',
      prodName: 'Ideals of Prison',
      isArt: false,
      isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://plus.unsplash.com/premium_photo-1667102275649-0e37225c5835?auto=format&fit=crop&q=60&dpr=1&h=294&w=294&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MTU2OTc1NHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/1465472245/vector/rainbow-artwork-close-up-templates-of-art-banner-design-creative-poster-vivid-acrylic-spots.webp?s=170667a&w=0&k=20&c=TcKG12n50U_cUJdAD3fVZJyB19_HoAb_KIemXuzZBMI=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 200.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '21',
      prodName: 'Enchanting Flock',
      isArt: true,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://source.unsplash.com/random/?art&randomNumber=11',
        'https://source.unsplash.com/random/?art&randomNumber=130',
        'https://source.unsplash.com/random/?art&randomNumber=553',
      ],
      price: 6000.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
  ];
}
