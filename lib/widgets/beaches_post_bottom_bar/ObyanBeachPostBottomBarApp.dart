import 'package:flutter/material.dart';

class ObyanBeachPostBottomBar extends StatefulWidget {
  @override
  _ObyanBeachPostBottomBarState createState() =>
      _ObyanBeachPostBottomBarState();
}

class _ObyanBeachPostBottomBarState extends State<ObyanBeachPostBottomBar> {
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
                      "Obyan Beach, Obyan",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Obyan Beach, accessed via a somewhat rugged road, offers a secluded escape from the bustle of city life. Its deep shores and waves make it an ideal destination for diving enthusiasts, providing an opportunity to explore the vibrant underwater world. With its natural beauty and serene & secluded ambiance, it's a great place for families and friends to unwind and enjoy a relaxing day at the beach."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
