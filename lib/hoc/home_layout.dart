import 'package:athang_expense_tracker/screens/account/account_screen.dart';
import 'package:athang_expense_tracker/screens/landing/home_screen.dart';
import 'package:athang_expense_tracker/screens/timer/timer_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = ['Home', 'Account', 'Timer'];
  List<Widget> screens = [
    HomeScreen(),
    const AccountScreen(),
    TimerScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_selectedIndex]),
      ),
      body: RefreshIndicator(
        onRefresh: () async{
          print('here');
        },
        child: SingleChildScrollView(
          child: screens[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.redAccent,
        currentIndex: _selectedIndex,
        onTap: (val) {
          setState(() {
            _selectedIndex = val;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Accounts'),
          BottomNavigationBarItem(icon: Icon(Icons.punch_clock_outlined), label: 'Timer'),
        ],
      ),
    );
  }
}
