import 'package:flutter/material.dart';

import '../screens/home_page.dart';
import '../screens/user_profile.dart';
import '../widgets/main_drawer.dart';



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


      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.shifting,
        elevation: 2,
        onTap: _selectedPage,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu,
            ),
            title: Text(
              'Menu',
              style: TextStyle(fontFamily: 'SpicyRice'),
            ),
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin_circle,
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontFamily: 'SpicyRice'),
            ),
          )
        ],
      ),
    );
  }
}
