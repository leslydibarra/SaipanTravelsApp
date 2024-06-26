import 'package:flutter/material.dart';
import 'package:saipan/screens/tourist_attractions/banzaicliff.dart';
import 'package:saipan/screens/tourist_attractions/lastcommandpost.dart';
import 'package:saipan/screens/tourist_attractions/managaha.dart';
import 'package:saipan/screens/tourist_attractions/mounttapuchao.dart';
import 'package:saipan/screens/tourist_attractions/suicidecliff.dart';

class TouristAttractionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist Attractions'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 251, 196),
      body: Expanded(
        child: ListView(
          scrollDirection: Axis.vertical, 
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: _buildRecommendedBox("images/banzaicliff.jpeg", "Banzai Cliff", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BanzaiCliffPage()),
                );
              }),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: _buildRecommendedBox("images/lastcommandpost.jpeg", "Last Command Post", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LastCommandPostPage()),
                );
              }),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: _buildRecommendedBox("images/suicidecliff.jpeg", "Suicide Cliff", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuicideCliffPage()),
                );
              }),
            ),
            SizedBox(height: 10), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: _buildRecommendedBox("images/managaha.jpeg", "Managaha", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManagahaPage()),
                );
              }),
            ),
            SizedBox(height: 10), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: _buildRecommendedBox("images/mounttapuchao.jpeg", "Mount Tapuchao", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MountTapuchaoPage()),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build recommended box
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
