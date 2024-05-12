import 'package:flutter/material.dart';

class LadderBeachPostBottomBar extends StatelessWidget {
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
                      "Ladder Beach, Obyan",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Ladder Beach, located along the rugged northeastern coast of Saipan, derives its name from the steep staircase leading down to its pristine shores. This picturesque stretch of coastline offers visitors a serene escape, with its crystal-clear waters and soft white sands framed by dramatic cliffs. Nearby, a quaint restaurant beckons beachgoers with tantalizing island-inspired cuisine. As the sun sets, Ladder Beach transforms into a romantic haven, offering breathtaking views of the Pacific Ocean painted in hues of orange and pink. Renowned for its natural beauty, Ladder Beach has also caught the attention of global sensations BTS, adding to its allure as a must-visit destination for travelers seeking both adventure and relaxation."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
