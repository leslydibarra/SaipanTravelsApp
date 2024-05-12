import 'package:flutter/material.dart';

class InfinityBeachPostBottomBar extends StatelessWidget {
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
                      "Infinity Beach, Capitol Hill",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Infinity Beach, also known as Dragon Tail Beach, beckons adventurers with its challenging yet rewarding trek, suited for those with moderate to advanced hiking skills. Upon arrival, visitors are greeted by the tranquil beauty of this secluded beach, where crashing waves create a mesmerizing soundtrack. However, caution is advised during high tide when the waves gain strength, and venturing too close to the edges will lead into the open ocean. Despite these challenges, the beach offers a safe swimming spot for those seeking to cool off and relax amidst nature's splendor."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
