import 'package:flutter/material.dart';

class MarineBeachPostBottomBar extends StatefulWidget {
  @override
  _MarineBeachPostBottomBarState createState() =>
      _MarineBeachPostBottomBarState();
}

class _MarineBeachPostBottomBarState extends State<MarineBeachPostBottomBar> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Marine Beach, Kagman",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Nestled in Kagman, Northern Mariana Islands, Marine Beach is a serene oasis offering tranquility and natural beauty. Spanning approximately 500 meters, its shores are adorned with immaculate white sands, inviting visitors to bask in the sun or sculpt sandcastles. This secluded haven exudes peace and serenity, providing a blissful escape from the hustle and bustle of everyday life. Adding to its charm, nearby stables offer the opportunity to embark on a leisurely horseback ride along the shoreline, allowing guests to immerse themselves in the picturesque scenery and create unforgettable memories."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
