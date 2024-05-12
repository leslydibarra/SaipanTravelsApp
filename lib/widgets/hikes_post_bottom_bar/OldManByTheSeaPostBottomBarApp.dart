import 'package:flutter/material.dart';

class OldManByTheSeaPostBottomBar extends StatelessWidget {
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
                      "Old Man by the Sea",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Old Man by the Sea offers an accessible hiking experience, suitable for those with moderate fitness levels. The trail derives its name from a prominent rock formation resembling the head of an old man, adding a touch of intrigue to the journey. At low tide, natural pools are formed along the coastline, providing an opportunity for refreshing swims in the calm waters left behind by the receding ocean tide. Along the route, visitors are treated to the sight of crashing waves, as well as picturesque mini caves and cliffside vistas, enhancing the allure of this coastal hike."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
