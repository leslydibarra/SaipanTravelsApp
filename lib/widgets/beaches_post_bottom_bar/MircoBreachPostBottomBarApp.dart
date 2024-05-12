import 'package:flutter/material.dart';

class MircoBeachPostBottomBar extends StatefulWidget {
  @override
  _MircoBeachPostBottomBarState createState() =>
      _MircoBeachPostBottomBarState();
}

class _MircoBeachPostBottomBarState extends State<MircoBeachPostBottomBar> {
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
                      "Micro Beach, Garapan",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Micro Beach, nestled in the heart of Garapan, Saipan, is renowned for its pristine shores and crystal-clear waters, making it a favorite among locals and tourists alike. Conveniently located adjacent to the American Memorial Park, visitors can easily stroll from the park to the beach and vice versa, enhancing the overall experience. With its powdery white sands and inviting azure waters, Micro Beach offers an idyllic setting for sunbathing, swimming, and leisurely strolls along the shoreline. As one of the most popular beaches on the island, it attracts a steady stream of visitors seeking relaxation and recreation amidst its scenic beauty. "
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
