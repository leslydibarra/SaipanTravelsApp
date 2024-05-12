
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



/*
class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 1, // Set the index to 1 for the "Home" tab
      items: [
        Icon(Icons.question_mark_rounded, size: 30, color: Colors.blue),
        Icon(Icons.home, size: 30, color: Colors.blue),
        Icon(Icons.favorite, size: 30, color: Colors.blue),
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
              MaterialPageRoute(builder: (context) => FavoritePage()),
            );
            break;
          default:
            break;
        }
      },
    );
  }
}



*/


/*
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';



class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 1, // Set the index to 1 for the "Home" tab
      items: [
        Icon(Icons.person, size: 30, color: Colors.blue),
        Icon(Icons.home, size: 30, color: Colors.blue),
        Icon(Icons.favorite, size: 30, color: Colors.blue),
      ],
    );
  }
}
*/
