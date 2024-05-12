import 'package:flutter/material.dart';
import 'package:saipan/widgets/beaches_post_bottom_bar/MircoBreachPostBottomBarApp.dart';
import 'package:saipan/widgets/post_app_bar.dart';


class MicroBeachPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/microbeach.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),        
        ),
        bottomNavigationBar: MircoBeachPostBottomBar(),
      ),

    );
  }
}
