import 'package:flutter/material.dart';
import 'package:asana1/basket.dart';
import 'package:asana1/home.dart';
import 'package:asana1/searchpage.dart';
import 'package:asana1/account.dart';
import 'package:asana1/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _NavbarState();
}

class _NavbarState extends State<BottomNavigation> {
  List<Widget> pages = [
    UserPage(),
    ShopPage(),
    ShoppingcartPage(),
    Search(),
    HomePage()
  ];
  int _index = 0; //1 paiwandi ba yakawa haya
  SelectIndex(int pageIndex) {
    setState(() {
      _index = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: pages.elementAt(_index), //1
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              backgroundColor: Colors.black,
              label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              backgroundColor: Colors.black,
              label: 'Requests'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              backgroundColor: Colors.black,
              label: 'Basket'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Colors.black,
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.black,
              label: 'Home'),
        ],
        onTap: SelectIndex,
        selectedItemColor: Colors.blue,
        currentIndex: _index,
      ),
    ));
  }
}
