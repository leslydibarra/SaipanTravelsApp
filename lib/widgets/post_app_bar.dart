import 'package:flutter/material.dart';

class PostAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 236, 236, 236),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Icon(
                Icons.arrow_back_ios,
                size: 25,
              ),
            ),
          ),
          
          /*
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Icon(
                Icons.favorite,color: Colors.redAccent,
                size: 28,
              ),
            ),
          ),

*/

        ],
      ),
    );
  }
}
