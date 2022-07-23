import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:e_waste_project/screens/E-market.dart';
import 'package:e_waste_project/screens/HomeTab.dart';
import 'package:e_waste_project/screens/Profile.dart';
import 'package:e_waste_project/screens/Recycling.dart';
import 'package:e_waste_project/screens/Repair.dart';

class mainpage extends StatefulWidget {
  mainpage({Key? key}) : super(key: key);
  @override
  _mainPage createState() => _mainPage();
}

class _mainPage extends State<mainpage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [
    HomePageTab(),
    RepairPage(),
    RecyclingPage(),
    EmarketPage(),
    ProfileScreen()
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      //  appBar: AppBar(
      // title: const Text('E-Waste'),
      // backgroundColor: Colors.green,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: Colors.green,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.blue : Colors.white,
              size: 30,
            ),
            label: 'Home',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.build,
                color: _selectedIndex == 1 ? Colors.blue : Colors.white,
                size: 30),
            //title:Text('Repair')
            label: 'Repair',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restore_from_trash,
              color: _selectedIndex == 2 ? Colors.blue : Colors.white,
              size: 30,
            ),
            label: 'Recycle',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_sharp,
              color: _selectedIndex == 3 ? Colors.blue : Colors.white,
              size: 30,
            ),
            label: 'E-Market',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle_sharp,
              color: _selectedIndex == 4 ? Colors.blue : Colors.white,
              size: 30,
            ),
            label: 'Profile',
            // backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
