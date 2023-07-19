import 'package:flutter/material.dart';
import 'package:simon/screens/cart.dart';
import 'package:simon/screens/home.dart';
import 'package:simon/screens/pages.dart';
import 'package:simon/screens/settings.dart';
import 'package:simon/screens/support.dart';

import 'mydrawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Home(),
          Support(),
          Cart(),
          Pages(),
          Settings(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        elevation: 25,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[500],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_sharp),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Pages'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          ),
        ],
      ),
    );
  }
}