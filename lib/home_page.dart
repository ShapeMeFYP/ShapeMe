import 'package:flutter/material.dart';
import 'package:shapeme/root_page.dart';
import 'main_page.dart';
import 'workout_page.dart';
import 'auth.dart';
import 'logging_page.dart';
import 'meal_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {

  HomePage({this.auth, this.onSignedOut});

  final BaseAuth auth;
  final VoidCallback onSignedOut;

  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  int _selectedIndex = 0;

  void _onPageChanged(int index) {
      setState(() {
        _selectedIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {

    PageController _pageController = PageController();
    List<Widget> _screen = [
      MainPage(), WorkoutPage(), LoggingPage(), MealPage(), ProfilePage(_signOut),
    ];

    void _onItemTapped(int selectedIndex) {
      _pageController.jumpToPage(selectedIndex);
    }

    return new Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: _selectedIndex == 0? Color(0xFF21BFBD) : Colors.black, size: 30,),
              title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center_outlined, color: _selectedIndex == 1? Color(0xFF21BFBD) : Colors.black, size: 30),
              title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined, color: _selectedIndex == 2? Color(0xFF21BFBD) : Colors.black, size: 30),
              title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined, color: _selectedIndex == 3? Color(0xFF21BFBD) : Colors.black, size: 30),
              title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: _selectedIndex == 4? Color(0xFF21BFBD) : Colors.black, size: 30),
              title: Text('')
          ),
        ],
      ),
    );
  }
}




























