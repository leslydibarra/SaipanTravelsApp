import 'package:flutter/material.dart';

class BanzaiCliffPostBottomBar extends StatelessWidget {
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
                      "Banzai Cliff, Capitol Hill",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Nestled between Puntan Sabaneta and Puntan Lagua Kattan, discover Banaderu, a 30-meter-high cliff known as Banzai Cliff, with its historical significance from World War II. Witness the breathtaking coastal scenery while learning about the tragic events that unfolded here. Visit this poignant site, where Japanese Emperor Akihito and Empress Michiko paid respects in 2005, offering prayers for those lost in the Battle of Saipan. - Marianas Visitors Authority",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
