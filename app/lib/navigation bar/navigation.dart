import 'package:app/color_constants/utils.dart';
import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/Cart_Item.dart';
import 'package:app/screens/order_done.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List <Widget> screens =[
    const home_screen(),
    CartScreen(),
    const orderdone(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
       bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  type: BottomNavigationBarType.fixed,
  onTap: _navigateBottomBar,
  items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:  'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
           label: 'cart',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
             label: 'checkout',
          ),
        ],
 ),
    );
  }
}