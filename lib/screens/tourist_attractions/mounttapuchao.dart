import 'package:flutter/material.dart';
import 'package:saipan/widgets/post_app_bar.dart';
import 'package:saipan/widgets/tourist_attractions_post_bottom_bar.dart/MountTapuchaoPostBottomBarApp.dart';


class MountTapuchaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/mounttapuchao.jpeg"),
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
        bottomNavigationBar: MountTapuchaoPostBottomBar(),
      ),

    );
  }
}
