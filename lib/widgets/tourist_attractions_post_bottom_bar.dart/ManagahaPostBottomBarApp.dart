import 'package:flutter/material.dart';

class ManagahaPostBottomBar extends StatelessWidget {
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
                      "Managaha Island",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Managaha Island, just off Tanapag's shores, holds profound significance for Saipan's inhabitants, especially the Carolinian community, as a revered sacred site. Linked to the legacy of Aghurubw, a historic navigator who settled Carolinians on Saipan, the island's history is steeped in tradition and respect. Although Aghurubw's burial site remains a closely guarded secret, a monument stands in his honor, symbolizing his enduring legacy. Managaha Island serves as a tranquil haven, connecting past and present amidst the serene beauty of its shores. -Pacific Worlds"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
