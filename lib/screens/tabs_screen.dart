import 'package:flutter/material.dart';

import '../screens/home_page.dart';
import '../screens/user_profile.dart';
import '../widgets/badge.dart';

class TabsScreen extends StatefulWidget {
  static const routeArgs = '/tabs-screen';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      {'page': HomePage(), 'title': 'Menu'},
      {'page': UserProfile(), 'title': 'Profile'}
    ];
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text(
          _pages[_selectedIndex]['title'],
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        actions: <Widget>[
          Badge(
            child: Icon(
              Icons.shopping_basket,
            ),
            value: "0",
            color: Colors.red,
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
      ),
      drawerScrimColor: Colors.red.withOpacity(0.8),
      drawer: Drawer(),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        elevation: 2,
        onTap: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Menu',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
            ),
            title: Text(
              'Profile',
            ),
          )
        ],
      ),
    );
  }
}
