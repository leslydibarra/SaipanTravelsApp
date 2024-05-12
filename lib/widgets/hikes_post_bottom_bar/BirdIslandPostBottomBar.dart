import 'package:flutter/material.dart';

class BirdIslandPostBottomBar extends StatelessWidget {
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
                      "Bird Island, Capitol Hill",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Bird Island, a prominent landmark in Saipan, offers more than just a scenic view—it doubles as a challenging hiking trail and an idyllic spot for admiring the island from afar. While trekking, caution is advised due to its steep terrain, but the payoff is worth it as you're greeted with stunning scenery upon reaching the beach and nearing the island itself. Renowned as one of Saipan's most photographed natural wonders, Bird Island holds cultural, economic, and environmental significance. Its surrounding reef and waters are protected as a fully no-take marine sanctuary, fostering the growth of one of the healthiest coral reefs in the CNMI."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
