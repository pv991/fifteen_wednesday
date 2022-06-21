import 'package:flutter/material.dart';
import 'package:fifteen_wednesday/screen/cartscreen.dart';
import 'package:fifteen_wednesday/screen/homescreen.dart';
import 'package:fifteen_wednesday/screen/orderscreen.dart';

import 'package:fifteen_wednesday/screen/profilepage.dart';
import 'package:fifteen_wednesday/screen/utilis/mydefaults.dart';
import 'package:fifteen_wednesday/screen/product.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  Myconfig myconfig = Myconfig();

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[

    HomeScreen(),
    ProductScreen(),
    OrderScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5,
        selectedLabelStyle: TextStyle(color: myconfig.myButtonbackgroundColor),
        selectedIconTheme:
        IconThemeData(color: myconfig.myButtonbackgroundColor),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFFC0C5CA),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
              size: myconfig.myIconSize * 0.85,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined,
                size: myconfig.myIconSize * 0.85),
            label: 'Fruits',
          ),
          BottomNavigationBarItem(
            icon:
            Icon(Icons.airport_shuttle, size: myconfig.myIconSize * 0.85),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined,
                size: myconfig.myIconSize * 0.85),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp, size: myconfig.myIconSize * 0.85),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: myconfig.myButtonbackgroundColor,
        onTap: _onItemTapped,
      ),
    );
  }
}