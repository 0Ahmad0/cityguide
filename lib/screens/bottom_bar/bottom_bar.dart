

import 'package:cityguide/constants/const.dart';
import 'package:flutter/material.dart';

import 'profile.dart';
import 'favorite.dart';
import 'browser.dart';
class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': Browser(),
      },
      {
        'page': Favorite(),
      },
      {
        'page': Profile(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          onTap: _selectPage,
          unselectedItemColor: Colors.black26,
          selectedItemColor: primaryColor,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              title: Text('Browser'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
