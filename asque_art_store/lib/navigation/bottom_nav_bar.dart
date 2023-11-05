import 'package:asque_art_store/config/theme.dart';
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
    const FavouriteScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade600,
          border: Border.fromBorderSide(
            BorderSide(
              width: 1,
              color: CustomAppTheme().primary,
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
                  icon: Icon(Icons.favorite, size: 20,),
                  label: 'Favorite',
                  backgroundColor: Colors.black,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 20,),
                  label: 'Profile',
                  
                  backgroundColor: Colors.black,
                ),
              ],
              unselectedIconTheme: const IconThemeData(
                color: Colors.white
              ),
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(color: Colors.black),
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
