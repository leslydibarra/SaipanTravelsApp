import 'package:flutter/material.dart';

class TankBeachPostBottomBar extends StatefulWidget {
  @override
  _TankBeachPostBottomBarState createState() =>
      _TankBeachPostBottomBarState();
}

class _TankBeachPostBottomBarState extends State<TankBeachPostBottomBar> {
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
                      "Tank Beach, Kagman",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Tank Beach is a hidden gem known for its stunning sunrises and underrated charm. Its expansive shoreline offers breathtaking panoramic views of the landscape, making it a favorite spot for photographers and nature enthusiasts alike. The wide expanse of sand provides ample space for leisurely walks along the coast, while the azure waters beckon with their beauty and allure. The crashing waves add a sense of drama to the scene, creating a mesmerizing symphony of sights and sounds that captivate visitors."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
