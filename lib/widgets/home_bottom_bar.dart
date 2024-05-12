
import 'package:flutter/material.dart';
import 'package:saipan/screens/about.dart';
import 'package:saipan/screens/home_screen.dart';
import 'package:saipan/screens/spinthewheel.dart';

class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white, 
      currentIndex: 1, 
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.question_mark_rounded, size: 30, color: Colors.black),
          label: 'Bida',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30, color: Colors.black),// Color.fromARGB(255, 86, 188, 84)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book, size: 30, color: Colors.black),
          label: 'About',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SpinWheel()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
            break;
          default:
            break;
        }
      },
    );
  }
}



