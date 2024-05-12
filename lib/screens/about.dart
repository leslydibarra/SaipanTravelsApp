
import 'package:flutter/material.dart';
import 'package:saipan/widgets/home_bottom_bar.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
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
              image: AssetImage('images/sunset.jpeg'), // Add your image path here
              fit: BoxFit.cover,
              //colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop), // Apply the color filter correctly
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Saipan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'History of the Island',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'The Marianas, a group of islands in the Pacific, offers both serene beaches and bustling' 
                    'city life. It boasts a rich history, from ancient seafarers settling around 2000 B.C. to Spanish exploration in the 16th century.'
                    'Under Spanish rule, the islands were named after Queen Maria Ana. The islands witnessed various periods of possession, including German rule and Japanese occupation during World War II' 
                    'Eventually, they came under American trusteeship and gained self-governing status in the late 20th century. Today, The Marianas is a Commonwealth of the United States.'
                    'The culture of The Marianas is deeply rooted in its indigenous Chamorro and Carolinian heritage. It celebrates this diversity through festivals that showcase traditional dances, crafts, and cuisine. '
                    'For example, the Liberation Day Parade commemorates the islands freedom'
                    'while the Taste of The Marianas International Food Festival offers a culinary journey.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Developer Notes:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Greetings everyone! I'm Lesly D. Ibarra, and I created this app with the primary intention of giving back to my home island, Saipan. My goal is to raise awareness about Saipan's beauty and rich history. Through this app, I aim to provide easy and affordable access to information about all the places and activities available here. This is the initial version of the app, with more updates planned for the future. If you have any suggestions or concerns, please feel free to reach out to me at leslydibarra@gmail.com. References: 'https://www.mymarianas.com/the-marianas/' 'https://www.pacificworlds.com/cnmi/native/native5.cfm'",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: HomeBottomBar(),
      ),
      
    );
    
  }
}