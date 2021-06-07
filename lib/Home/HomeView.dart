import 'package:Feriap/Pages/pages/Home.dart';
import 'package:Feriap/Pages/pages/profil.dart';
import 'package:Feriap/Pages/pages/shopping_cart.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  VoidCallback _indexCallBack(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Home(),
          ShoppingCart(),
          Profil(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        selectedIconTheme: IconThemeData(size: 40.0),
        currentIndex: _currentIndex,
        onTap: _indexCallBack,
        backgroundColor: Colors.white.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme:
            IconThemeData(color: Colors.blueGrey.withOpacity(0.5)),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Perfil')
        ],
      ),
    );
  }
}

class Shopping_cart {}
