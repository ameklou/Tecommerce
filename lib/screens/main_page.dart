import 'package:flutter/material.dart';
import 'package:tshop/model/wine.dart';
import 'package:tshop/screens/account_page.dart';
import 'package:tshop/screens/cart_page.dart';
import 'package:tshop/screens/categories_page.dart';
import 'package:tshop/screens/history_page.dart';
import 'package:tshop/screens/home_page.dart';
import 'package:tshop/screens/login_page.dart';
import 'package:tshop/utils/const.dart';
import 'package:tshop/widgets/wine_card.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex=0;
  final List<Widget> _children=[
    HomePage(),
    CategoriesPage(),
    CartPage(),
    HistoryPage(),
    AccountPage(),

  ];


  void onTabTapped(int index){
    setState(() {
      _currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          )
        ],
        unselectedItemColor: navUnselectedColor,
        selectedItemColor: navSelectedColor,
      ),
    );
  }
}

