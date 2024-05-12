
import 'package:flutter/material.dart';
import 'package:saipan/screens/category_card.dart';
import 'package:saipan/screens/beaches.dart'; 
import 'package:saipan/screens/hikes.dart'; 
import 'package:saipan/screens/search.dart';
import 'package:saipan/screens/tourist_attractions/managaha.dart';
import 'package:saipan/screens/touristattractions.dart'; 
import 'package:saipan/screens/hikes/birdisland.dart'; 
import 'package:saipan/screens/hikes/forbiddenisland.dart'; 
import 'package:saipan/widgets/home_bottom_bar.dart'; 
class PlaceInfo {
  final String image;
  final String name;

  PlaceInfo({required this.image, required this.name});
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 253, 246, 151),
      backgroundColor: Color.fromARGB(255, 255, 251, 196),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage("images/logo.jpeg"),
                  ),
                  SizedBox(width: 15),
                  RichText(
                    text: TextSpan(
                      text: "Saipan ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Explore the island of Saipan",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(100),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  },
                  child: Container(
                    height: 60, // Adjusted height to match the original size
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 10),
                          Text(
                            "Search destination",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      image: "images/beach_logo.jpeg",
                      title: "beaches",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BeachesPage()),
                        );
                      },
                    ),
                    CategoryCard(
                      image: "images/hike_logo.jpeg",
                      title: "hikes",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HikesPage()),
                        );
                      },
                    ),
                    CategoryCard(
                      image: "images/touristattraction_logo.jpeg",
                      title: "tourist attractions",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TouristAttractionsPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Recommended",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildRecommendedBox("images/birdisland.jpeg", "Bird Island", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BirdIslandPage()),
                        );
                      }),
                      _buildRecommendedBox("images/managaha.jpeg", "Managaha", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ManagahaPage()),
                        );
                      }),
                      _buildRecommendedBox("images/forbiddenisland.jpeg", "Forbidden Island", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForbiddenIslandPage()),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }

  Widget _buildRecommendedBox(String imagePath, String title, VoidCallback press) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: press,
          child: Container(
            width: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, size: 16),
                            SizedBox(width: 5),
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

