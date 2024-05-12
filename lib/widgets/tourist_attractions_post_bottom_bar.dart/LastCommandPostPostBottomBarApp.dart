import 'package:flutter/material.dart';

class LastCommandPostPostBottomBar extends StatelessWidget {
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
                      "Last Command Post",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "The Last Command Post, constructed by the Japanese military in early 1944, played a pivotal role in Japan's defense during World War II against American forces. Lt. General Yoshitsugu Saito used a cave behind San Roque Village as his final command post, from which he orchestrated a last-ditch counter-attack before committing suicide on July 7, 1944. Despite the island being declared secure on July 9, 1944, sporadic fighting continued for weeks afterward. In the 1960s, various military equipment was placed on display near The Last Command Post for public viewing. - Marianas Visitors Authority"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
