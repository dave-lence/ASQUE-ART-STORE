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
        isFineArt,
        isSculpture,
      ];

  static List<Product> products = [
    Product(
      id: '1',
      prodName: 'Swepes',
      isArt: true,
      isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/1212694692/photo/color-oil-bubbles.jpg?s=612x612&w=0&k=20&c=-12e2UvYrrwuS7UQs7PyT_Yx88849neTfAwYGIOt1Ac=', //https://unsplash.com/photos/dO9A6mhSZZY
        'https://media.istockphoto.com/id/1474754798/photo/a-close-up-shows-large-colorful-koi-fish-swimming-in-a-fish-pond-with-an-oxygen-circulation.jpg?s=612x612&w=0&k=20&c=ivS_3tsZx1ySa8VMhn1MSpyriF6QWY4Hmgy51C0kqBU='
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '2',
      prodName: 'Thumbs Up Thumbs',
      isArt: false,
      isFineArt: false,
      isSculpture: true,
      imageUrls: const [
        'https://media.istockphoto.com/id/1328896832/photo/artist-painting-and-giving-final-touches-to-lord-ganesha-ahead-of-ganesha-chaturthi-festival.webp?b=1&s=170667a&w=0&k=20&c=ylYsS9nb7lYjLHOj6mHX8edjebCyuERaaZq64zLL-Ac=',
         
        'https://media.istockphoto.com/id/96668488/photo/ancient-hindu-statue-at-konark-temple.webp?b=1&s=170667a&w=0&k=20&c=xSpwzX-AH_XlifT36VjH86j_MN1CW63TC8HSmBMrk-U=',
        'https://media.istockphoto.com/id/1164731661/photo/portrait-of-maa-durga-idol-of-hindu-goddess-durga-during-preparations-in-kolkata.webp?b=1&s=170667a&w=0&k=20&c=SSpBqLPQpE3WUzDO8u3G-XDnrI58o6E5pcwyuwMlAzk='
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '3',
      prodName: 'Soda Thumbs Up',
      isArt: false,
            isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/1298984548/photo/indian-women-twist-silk-cloth.webp?b=1&s=170667a&w=0&k=20&c=YaV3Ue30GIVYp65vB98oN9KW_P2zTwm4IOcksNYZeU0=', //https://unsplash.com/photos/5LIInaqRp5s
        'https://media.istockphoto.com/id/117307939/photo/one-indian-senior-woman-artist-working-on-her-painting.webp?b=1&s=170667a&w=0&k=20&c=6E4lp_coImEXk-u7gmp_Y3yrvdz2HBHPJtlKeyq3DPo=', //https://unsplash.com/photos/5LIInaqRp5s
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '4',
      prodName: 'Fine art Thumbs Up',
      isArt: false,
            isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/157579199/photo/bundi-palace-painting-from-rajasthan-india.webp?b=1&s=170667a&w=0&k=20&c=o7HvUfTVyf9m7q4iAHtShvfol0QgIk_SFknyB9ORMi0=', //https://unsplash.com/photos/kcYXj4tBtes
        'https://media.istockphoto.com/id/974614454/photo/abstract-mandala-graphic-design-background.webp?b=1&s=170667a&w=0&k=20&c=GhGKBiCwZn0NswtHkfxi_fanYIIUwvz824VyjOOIG44=', //https://unsplash.com/photos/kcYXj4tBtes
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '5',
      prodName: 'Sculpture Thumbs Up',
      isArt: false,
            isFineArt: true,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YXJ0fGVufDB8fDB8fHww', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1515405295579-ba7b45403062?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGFydHxlbnwwfHwwfHx8MA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '6',
      prodName: 'Hollandia Milk',
      isArt: false,
            isFineArt: true,
      isSculpture:  false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1537632083056-f557a4e1e01f?auto=format&fit=crop&q=80&w=1374&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/1224007643/photo/freeze-motion-of-colorful-color-powder-exploding-on-white-background-paint-holi-indian.webp?s=170667a&w=0&k=20&c=8MZYGtPx3xtLyv5bqvlJIy6Bi-_tX1Kgn2ZWneIC8OM=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '7',
      prodName: 'Pepsi Thumbs Up',
      isArt: false,
            isFineArt: false,
      isSculpture:  true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1548811579-017cf2a4268b?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2N1bHB0dXJlfGVufDB8fDB8fHww'
            'https://images.unsplash.com/photo-1593283590172-adfce2adf213?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2N1bHB0dXJlfGVufDB8fDB8fHww', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1609856699475-6fc22afa6d31?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2N1bHB0dXJlfGVufDB8fDB8fHww', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(

      id: '8',
      prodName: 'Mexican soda',
      isArt: false,
            isFineArt: false,
      isSculpture: true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1558611913-d707111c702e?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2N1bHB0dXJlfGVufDB8fDB8fHww', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1606640935390-5c6694facfec?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c2N1bHB0dXJlfGVufDB8fDB8fHww', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '9',
      prodName: 'Sculpture Thumbs Up',
      isArt: false,
            isFineArt: false,
      isSculpture: true,
      imageUrls: const [
        'https://images.unsplash.com/photo-1600625668651-7e9235c66dbb?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHNjdWxwdHVyZXxlbnwwfHwwfHx8MA%3D%3D'
            'https://images.unsplash.com/photo-1608649299213-85b3ee68d74e?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHNjdWxwdHVyZXxlbnwwfHwwfHx8MA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1600173293426-65190a24be72?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHNjdWxwdHVyZXxlbnwwfHwwfHx8MA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '10',
      prodName: 'Green Smothies',
      isArt: false,
            isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1482160549825-59d1b23cb208?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGFydHxlbnwwfHwwfHx8MA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1545989253-02cc26577f88?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGFydHxlbnwwfHwwfHx8MA%3D%3D', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '11',
      prodName: 'Soft Drink #1',
      isArt: true,
            isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1618327907102-e07a8d7081c6?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8'
            'https://images.unsplash.com/photo-1533158326339-7f3cf2404354?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fHw%3D', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1611063158871-7dd3ed4a2ac8?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '12',
      prodName: 'Coca cola Thumbs Up',
      isArt: true,
            isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/1052973252/photo/abstract-geometric-background-texture-geometric-shape-pattern-1.jpg?s=612x612&w=0&k=20&c=6Q5TT2XjlddgXMdpQGMXVQIq37KOEedPtTIP61jXuFM=', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/93146574/photo/daisy-background.jpg?s=612x612&w=0&k=20&c=u1CLVJ-o9p65LrV1PstSyLB5XJ1lcxSHCFbS82Zz9Rw=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '13',
      prodName: 'Soft Drink Thumbs Up',
      isArt: false,
              isFineArt: false,
     isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1561214115-f2f134cc4912?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFydHxlbnwwfHwwfHx8MA%3D%3D'
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
            isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/924084204/photo/childrens-drawing-snail-crawling-on-yellow-carpet.jpg?s=612x612&w=0&k=20&c=k69CUSilwl8l6Q86XkU7GrlKg_5cUH3VznCfD3tQ9sU=', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/92042670/photo/oil-colors-painting.jpg?s=612x612&w=0&k=20&c=5OuLfjRQvLuTmUc914YSK6fZdthmSvsXOtSooAcKefU=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '15',
      prodName: 'Modern sport casual shoe',
      isArt: false,
            isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://images.unsplash.com/photo-1615184697985-c9bde1b07da7?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1523877661038-d7106199e2ae?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 10.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '16',
      prodName: 'Black red air jordan',
      isArt: false,
            isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/1226184141/vector/portrait-of-a-cat-with-a-bow-gouache-illustration.webp?s=170667a&w=0&k=20&c=-TUDp_puaOXQbX1OUXadvV25-3sBLTkYQkUMbTgSQZA=', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/529370241/vector/landscape-with-white-church.webp?s=170667a&w=0&k=20&c=0MH_9fpysOm0IqorG37Ngj5EDZ4rm7_Ct5t0OV-rwyM=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 20.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '17',
      prodName: 'Nike Air max Thumbs',
      isArt: true,
            isFineArt: false,
     isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/477417319/photo/kids-painting-of-universe-with-planets-sun-and-stars.jpg?s=612x612&w=0&k=20&c=mIOkS_Inh9tY43vhaNTRbpymKwnn-QHGTs9f6GyHNyM=', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/604350982/photo/oil-painting.jpg?s=612x612&w=0&k=20&c=yH1tGHtNKuhq4MNxPkNEIWsB6jyFugDCw4MJX7TRzyQ=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 5.99,
      isAvailable: 'Limited',
      isTrending: true,
    ),
    Product(
      id: '18',
      prodName: 'Grey blank T-shirt',
      isArt: false,
            isFineArt: false,
      isSculpture: false,
      imageUrls: const [
        'https://media.istockphoto.com/id/1127995438/photo/azwa-mariam-monastery.jpg?s=612x612&w=0&k=20&c=PdFFqlj432yPpfY9hfZ6P3NgDRXmk5uwmLu5ABjwL08=', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/623760914/photo/detail-of-the-painting-as-a-background.jpg?s=612x612&w=0&k=20&c=toOq9gu6iZVsbcjYS9KHM87EnYMZNOr4clAupQLjTZk=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 5.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
    Product(
      id: '19',
      prodName: 'Blue T-shirt',
      isArt: false,
            isFineArt: false,
      isSculpture: false,

      imageUrls: const [
        'https://media.istockphoto.com/id/1318791454/photo/metaphorical-installation-depicting-frightened-children.jpg?s=612x612&w=0&k=20&c=VkFIISDIs9jB_CD9CTgirA1vVJbCHN0eMtS6jl60wBY=',
        'https://media.istockphoto.com/id/152995251/photo/loy-kratong-festival.jpg?s=612x612&w=0&k=20&c=XkL3lQMi19SS2-yQx0os2nEUpHcdBjqI5RW3bThBgGU='
      ],
      price: 5.99,
      isAvailable: 'Unlimited',
      isTrending: true,
    ),
    Product(
      id: '20',
      prodName: 'Grey crew T-shirt',
      isArt: false,
            isFineArt: false,
      isSculpture: false,

      imageUrls: const [
        'https://plus.unsplash.com/premium_photo-1667102275649-0e37225c5835?auto=format&fit=crop&q=60&dpr=1&h=294&w=294&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MTU2OTc1NHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
        'https://media.istockphoto.com/id/1465472245/vector/rainbow-artwork-close-up-templates-of-art-banner-design-creative-poster-vivid-acrylic-spots.webp?s=170667a&w=0&k=20&c=TcKG12n50U_cUJdAD3fVZJyB19_HoAb_KIemXuzZBMI=', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 2.99,
      isAvailable: 'Unlimited',
      isTrending: false,
    ),
    Product(
      id: '21',
      prodName: 'Floral top Thumbs Up',
      isArt: false,
            isFineArt: false,
      isSculpture: false,

      imageUrls: const [
        'https://images.unsplash.com/photo-1613206468203-fa00870edf79?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
        'https://images.unsplash.com/photo-1547891654-e66ed7ebb968?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8', //https://unsplash.com/photos/CrK843Pl9a4
      ],
      price: 6.99,
      isAvailable: 'Limited',
      isTrending: false,
    ),
  ];
}
