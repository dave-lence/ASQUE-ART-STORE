import 'package:asque_art_store/screens/home_screen.dart';
import 'package:asque_art_store/screens/screens.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const CartScreen(),
    const MoreScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        
        margin: EdgeInsets.symmetric(horizontal: 20),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          border: Border.fromBorderSide(
            BorderSide(
              width: 1,
              color: const Color.fromARGB(
                          255,
                          172,
                          113,
                          92,
                        ),
            )
          )
         ),
         
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
               
               backgroundColor:  const Color.fromARGB(
                          255,
                          172,
                          113,
                          92,
                        ),
              items: const <BottomNavigationBarItem>[
              
                BottomNavigationBarItem(
        
                  icon: Icon(Icons.home, size: 20,),
                  label: 'Home',
                  backgroundColor: Colors.black,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart, size: 20,),
                  label: 'Cart',
                  backgroundColor: Colors.black,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.apps, size: 20,),
                  label: 'More',
                  
                  backgroundColor: Colors.black,
                ),
              ],
              unselectedIconTheme: IconThemeData(
                color: Colors.white
              ),
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(color: Colors.black),
              // unselectedLabelStyle: TextStyle(color: Colors.white),
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              iconSize: 40,
              onTap: _onItemTapped,
              elevation: 5),
        ),
      ),
    );
  }
}
