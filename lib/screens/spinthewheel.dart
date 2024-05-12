import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:rxdart/rxdart.dart';
import 'package:saipan/widgets/home_bottom_bar.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  final selected = BehaviorSubject<int>();
  String rewards = "";
  List<String> items = //["Hike", "Local Restaruant", "Star Gazing", "Beach Day", "Stroll at the Park", "Cliff Diving "];
  ["Ladder Beach", "Marine Beach", "Micro Beach","Obyan Beach", "Tank Beach","Bird Island", "Forbidden Island", "Grotto","Infinity Beach", "Old Man by the Sea", "Banzai Cliff", "Last Command ", "Managaha ", "Mt.Tapochao", "Suicide Cliff"];

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/stargazing.jpeg"), 
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
  height: 300,
  child: FortuneWheel(
    selected: selected.stream,
    animateFirst: false,
    items: [
      for (int i = 0; i < items.length; i++)
        FortuneItem(
          child: Text(
            items[i].toString(),
            style: TextStyle(color: Colors.black),
             
          ),
          style: FortuneItemStyle(
            color: Colors.yellow, 
          ),
        )
    ],
    onAnimationEnd: () {
      setState(() {
        rewards = items[selected.value];
      });
      print(rewards);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(rewards.toString()),
        ),
      );
    },
  ),
),

              GestureDetector(
  onTap: () {
    setState(() {
      selected.add(Fortune.randomInt(0, items.length));
    });
  },
  child: Container(
    height: 40,
    width: 150,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 251, 246, 255),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Text(
        "What's the Bida?",
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 16, 
        ),
      ),
    ),
  ),
),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(), 
    );
  }
}
