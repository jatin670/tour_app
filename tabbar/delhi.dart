import 'package:flutter/material.dart';

class delhi_tab extends StatefulWidget {
  @override
  State<delhi_tab> createState() => _delhi_tabState();
}

final List img = [
  'Akshardham Temple',
  'Red Fort',
  'India Gate',
  'Jantar Mantar',
  'Qutub Minar',
  'Humayun’s Tomb',
  'Lotus Temple',
];
//for(int i = 0; i < img.length; i++),
List names = [
  'Akshardham Temple',
  'Red Fort',
  'India Gate',
  'Jantar Mantar',
  'Qutub Minar',
  'Humayun’s Tomb',
  'Lotus Temple',
];
List<String> locations = [
  'Location: Nearest Metro Station Akshardham, New Delhi ',
  'Location: Nearest Metro Station Chandni Chowk, New Delhi',
  'Location: Nearest Metro Station Central Secretariat, New Delhi',
  'Location: Nearest Metro Station Rajiv Chowk Metro Station, New Delhi',
  'Location: Nearest Station: Qutub Minar metro station, New Delhi',
  'Location: Nearest Metro Station Jor Bagh, New Delhi',
  'Location: Nearest Metro Station Kalkaji Mandir, New Delhi',
];
List<String> timings = [
  'Timings: 10:00 am to 06:30 pm',
  'Timings: Every day ',
  'Timings: 24 hours a day, seven days',
  'Timings: 9:00 AM to 7:00 PM',
  'Timings: 7:00 am to 5:00 pm',
  'Timings: 6:00 am to 6:00 pm',
  'Timings: 9:00 am to 5:00 pm',
];

class _delhi_tabState extends State<delhi_tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(left: 73),
            child: Text(
              'Delhi',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 27,
                  fontStyle: FontStyle.italic),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            for (int i = 0; i < names.length; i++)
              //for (int i = 0; i < img.length; i++)
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Color(0xff212325),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      splashColor: Colors.grey,
                      child: Card(
                        // Define the shape of the card
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        // Define how the card's content should be clipped
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        // Define the child widget of the card
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Add padding around the row widget
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Add an image widget to display an image
                                  Image.asset(
                                    'assets/images/${img[i]}.png',
                                    fit: BoxFit.cover,
                                  ),
                                  // Add some spacing between the image and the text
                                  Container(width: 20),
                                  // Add an expanded widget to take up the remaining horizontal space
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Add some spacing between the top of the card and the title
                                        Container(height: 5),

                                        // Add a title widget
                                        Text(
                                          names[i],
                                          style: TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                        // Add some spacing between the title and the subtitle
                                        Container(height: 5),
                                        // Add a subtitle widget
                                        Text(
                                          locations[i],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                        // Add some spacing between the subtitle and the text
                                        Container(height: 10),
                                        // Add a text widget to display some text
                                        Text(
                                          timings[i],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ));
  }
}
