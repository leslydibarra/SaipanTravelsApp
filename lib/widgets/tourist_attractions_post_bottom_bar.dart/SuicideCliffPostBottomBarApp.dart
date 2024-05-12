import 'package:flutter/material.dart';

class SuicideCliffPostBottomBar extends StatelessWidget {
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
                      "Suicide Cliff, Marpi",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Tower over 800 feet tall, Suicide Cliff dramatically extends above the mostly flat Marpi plains. This site witnessed the tragic acts of Japanese civilians and soldiers who chose to leap from its precipice rather than surrender during the final days of the battle for Saipan, with memorials honoring the fallen scattered along the cliff's edge. Offering uninterrupted vistas of the island's northern tip, an abandoned WWII airfield, and Banzai Cliff, Suicide Cliff serves as a prominent viewpoint. Additionally, it has hosted hang-gliding competitions and serves as an entry point to the Banadero Trail, leading to the Last Command Post. - Marianas Visitor's Authority"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
