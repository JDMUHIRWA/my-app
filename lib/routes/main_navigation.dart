import 'package:flutter/material.dart';
import '../screens/Nav_screens/home_screen.dart';
import '../screens/Nav_screens/search_screen.dart';
import '../screens/Nav_screens/inbox_home_page.dart';
import '../screens/Nav_screens/library_screen.dart';
import '../constants/app-colors.dart';

class MainNavigation extends StatefulWidget {
  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 2;

  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    InboxHomePage(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          backgroundColor: AppColors.background,
          selectedItemColor: AppColors.green,
          unselectedItemColor: AppColors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: "Library",
            ),
          ],
        ),
      ),
    );
  }
}
