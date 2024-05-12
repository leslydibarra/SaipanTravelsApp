import 'package:flutter/material.dart';

class MountTapuchaoPostBottomBar extends StatelessWidget {
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
                      "Mount Tapochao, Capitol Hill",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Rising proudly from the landscape, Mt. Tapochau (also known as Okso Tapochau) is the tallest peak on Saipan, characterized by its uplifted limestone formations. At its summit, visitors are treated to a breathtaking panorama, offering sweeping views of Saipan, as well as the neighboring islands of Tinian and Aguiguan. Every Good Friday, a tradition sees thousands of Catholics making the pilgrimage to the peak to install the wooden cross. Believed to have served as a navigational beacon for ancient Chamorros, Mt. Tapochau remains an enduring symbol of both natural beauty and cultural heritage on the island. - Marianas Visitors Authority"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
