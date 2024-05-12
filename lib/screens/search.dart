import 'package:flutter/material.dart';
import 'package:saipan/screens/beaches/LadderBeach.dart';
import 'package:saipan/screens/beaches/MarineBeach.dart';
import 'package:saipan/screens/beaches/MicroBeach.dart';
import 'package:saipan/screens/beaches/ObyanBeach.dart';
import 'package:saipan/screens/beaches/TankBeach.dart';
import 'package:saipan/screens/hikes/birdisland.dart';
import 'package:saipan/screens/hikes/forbiddenisland.dart';
import 'package:saipan/screens/hikes/grotto.dart';
import 'package:saipan/screens/hikes/infinitybeach.dart';
import 'package:saipan/screens/hikes/oldmanbythesea.dart';
import 'package:saipan/screens/tourist_attractions/banzaicliff.dart';
import 'package:saipan/screens/tourist_attractions/lastcommandpost.dart';
import 'package:saipan/screens/tourist_attractions/managaha.dart';
import 'package:saipan/screens/tourist_attractions/mounttapuchao.dart';
import 'package:saipan/screens/tourist_attractions/suicidecliff.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> _allUsers = [
    {"name": "Banzai Cliff", "page": BanzaiCliffPage()},
    {"name": "Bird Island", "page": BirdIslandPage()},
    {"name": "Forbidden Island", "page": ForbiddenIslandPage()},
    {"name": "Grotto", "page": GrottoPage()},
    {"name": "Infinity Beach", "page": InfinityBeachPage()},
    {"name": "Ladder Beach", "page": LadderBeachPage()},
    {"name": "Last Command Post", "page": LastCommandPostPage()},
    {"name": "Managaha", "page": ManagahaPage()},
    {"name": "Marine Beach", "page": MarineBeachPage()},
    {"name": "Micro Beach", "page": MicroBeachPage()},
    {"name": "Mount Tapochao", "page": MountTapuchaoPage()},
    {"name": "Obyan Beach", "page": ObyanBeachPage()},
    {"name": "Old Man by the Sea", "page": OldManByTheSeaPage()},
    {"name": "Suicide Cliff", "page": SuicideCliffPage()},
    {"name": "Tank Beach", "page": TankBeachPage()},
  ];

  List<Map<String, dynamic>> _filteredUsers = [];

  @override
  void initState() {
    super.initState();
    _filteredUsers = _allUsers;
  }

  void _filterUsers(String query) {
    setState(() {
      _filteredUsers = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 251, 196), // Match the background color of the home page
      appBar: AppBar(
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent, // Make the app bar transparent
        elevation: 0, // Remove app bar elevation
      ),
      body: Padding(
        padding: const EdgeInsets.all(15), // Adjust padding to match the home page layout
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        onChanged: _filterUsers,
                        decoration: InputDecoration(
                          hintText: 'Search destination',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredUsers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredUsers[index]["name"]),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => _filteredUsers[index]["page"],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}




