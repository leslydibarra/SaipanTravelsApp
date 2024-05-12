import 'package:flutter/material.dart';
import 'package:saipan/widgets/hikes_post_bottom_bar/BirdIslandPostBottomBar.dart';
import 'package:saipan/widgets/post_app_bar.dart';

class BirdIslandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/birdisland.jpeg"),
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
        bottomNavigationBar: BirdIslandPostBottomBar(),
      ),

    );
  }
}