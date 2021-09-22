// ignore: import_of_legacy_library_into_null_safe
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:solar_system_app_ui/Screens/SearchScreen.dart';
import 'Screens/HomeScreen.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    HomeScreen(),
    SearchScreen(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: BubbleBottomBar(
          opacity: .2,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          elevation: 8,
          hasNotch: true,
          hasInk: true,
          inkColor: Colors.black12,
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
                backgroundColor: Colors.red,
                icon: const Icon(
                  Icons.dashboard,
                  color: Colors.black,
                ),
                activeIcon: const Icon(
                  Icons.dashboard,
                  color: Colors.red,
                ),
                title: const Text("Home")),
            BubbleBottomBarItem(
                backgroundColor: Colors.deepPurple,
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
                activeIcon: const Icon(
                  Icons.search_outlined,
                  color: Colors.deepPurple,
                ),
                title: const Text("Search")),
            BubbleBottomBarItem(
                backgroundColor: Colors.indigo,
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                ),
                activeIcon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.indigo,
                ),
                title: const Text("Profile")),
          ],
        ),
      ),
    );
  }
}
