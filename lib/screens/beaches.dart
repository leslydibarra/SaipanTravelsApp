import 'package:flutter/material.dart';
import 'package:saipan/screens/beaches/LadderBeach.dart';
import 'package:saipan/screens/beaches/MarineBeach.dart';
import 'package:saipan/screens/beaches/MicroBeach.dart';
import 'package:saipan/screens/beaches/ObyanBeach.dart';
import 'package:saipan/screens/beaches/TankBeach.dart';

class BeachesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beaches'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 251, 196),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20), // Separation between app bar and search section
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical, // Change scroll direction to vertical
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                  child: _buildRecommendedBox("images/tankbeach.jpeg", "Tank Beach", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TankBeachPage()),
                    );
                  }),
                ),
                SizedBox(height: 10), // Add gap below each box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                  child: _buildRecommendedBox("images/microbeach.jpeg", "Micro Beach", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MicroBeachPage()),
                    );
                  }),
                ),
                SizedBox(height: 10), // Add gap below each box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                  child: _buildRecommendedBox("images/marinebeach.jpeg", "Marine Beach", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MarineBeachPage()),
                    );
                  }),
                ),
                SizedBox(height: 10), // Add gap below each box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                  child: _buildRecommendedBox("images/ladderbeach.jpeg", "Ladder Beach", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LadderBeachPage()),
                    );
                  }),
                ),
                SizedBox(height: 10), // Add gap below each box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                  child: _buildRecommendedBox("images/obyanbeach.jpeg", "Obyan Beach", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ObyanBeachPage()),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build recommended box
Widget _buildRecommendedBox(String image, String title, VoidCallback press) {
  return InkWell(
    onTap: press,
    child: Container(
      width: double.infinity, // Adjust the width to fit the screen
      height: 200, // Adjust the height as needed
      margin: EdgeInsets.symmetric(vertical: 10), // Add vertical margin
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Black color with opacity of 0.5
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
}