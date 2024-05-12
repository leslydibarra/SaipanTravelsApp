import 'package:flutter/material.dart';

class ForbiddenIslandPostBottomBar extends StatelessWidget {
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
                      "Fordbidden Island, Kagman",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Forbidden Island stands as one of Saipan's most challenging hikes, renowned for its steep inclines that offer a thrilling descent. Despite the arduous climb, hikers are rewarded with awe-inspiring vistas as they make their way down. Upon arrival, visitors are greeted with breathtaking scenery and abundant opportunities for relaxation or photography. The area features stunning cliffs where locals safely dive into the azure waters below, as well as captivating caves and tranquil swimming spots, adding to its allure."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
