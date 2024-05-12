import 'package:flutter/material.dart';

class GrottoPostBottomBar extends StatelessWidget {
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
                      "Grotto, San Roque",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Recognized as one of the premier cavern dive spots globally, this natural sinkhole links to the ocean through three underwater passages. The Grotto showcases stunning shades of blue, making it an essential visit for tourists and residents alike. Be vigilant as the powerful currents pose significant risks. -- Marianas Visitors Authority"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
