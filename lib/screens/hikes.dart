import 'package:flutter/material.dart';
import 'package:saipan/screens/hikes/birdisland.dart';
import 'package:saipan/screens/hikes/forbiddenisland.dart';
import 'package:saipan/screens/hikes/grotto.dart';
import 'package:saipan/screens/hikes/oldmanbythesea.dart';
import 'package:saipan/screens/hikes/infinitybeach.dart';


class HikesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hikes'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 251, 196),
      body: Expanded(
        child: ListView(
          scrollDirection: Axis.vertical, 
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildRecommendedBox("images/birdisland.jpeg", "Bird Island", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BirdIslandPage()),
                );
              }),
            ),
            SizedBox(height: 10), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: _buildRecommendedBox("images/forbiddenisland.jpeg", "Forbidden Island", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForbiddenIslandPage()),
                );
              }),
            ),
            SizedBox(height: 10), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: _buildRecommendedBox("images/grotto.jpeg", "Grotto", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GrottoPage()),
                );
              }),
            ),
            SizedBox(height: 10), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildRecommendedBox("images/oldmanbythesea.jpeg", "Old Man By The Sea", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OldManByTheSeaPage()),
                );
              }),
            ),
            SizedBox(height: 10), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: _buildRecommendedBox("images/infinitybeach.jpeg", "Infinity Beach", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfinityBeachPage()),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  
Widget _buildRecommendedBox(String image, String title, VoidCallback press) {
  return InkWell(
    onTap: press,
    child: Container(
      width: double.infinity, 
      height: 200, 
      margin: EdgeInsets.symmetric(vertical: 10), 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), 
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
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
            fontSize: 18, 
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
}
