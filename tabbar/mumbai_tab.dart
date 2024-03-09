import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_app/screens/mumbai_screen.dart';

class Mumtab extends StatefulWidget {
  @override
  State<Mumtab> createState() => _MumtabState();
}

class _MumtabState extends State<Mumtab> {
  final List img = [
    'Gateway of India',
    'OST. Mumbai',
    'Juhu Beach',
    'Hanging Garden',
    'Nehru Centre',
    'Marine Drive',
    'Chota Kashmir',
  ];
  //for(int i = 0; i < img.length; i++),
  List names = [
    'Gateway of India',
    'OST. Mumbai',
    'Juhu Beach',
    'Hanging Garden',
    'Nehru Centre',
    'Marine Drive',
    'Chota Kashmir',
  ];
  List<String> locations = [
    'Location:Apollo Bandar, Colab, Mumbai',
    'Location:Chhatrapati Shivaji Terminus Area, Mumbai',
    'Location:Juhu Tara Road, Andheri, Mumbai',
    'Location:Simla Nagar, Malabar Hill, Mumbai',
    'Location:Dr. Annie Besant Rd, Lotus Colony, Worl, Mumbai',
    'Location:Netaji Subhash Chandra Bose Road, Chowpetty, Mumbai',
    'Location:Aarey Milk Colony, Goregaon, Mumbai',
  ];
  List<String> timings = [
    'Timings:24x7, every day',
    'Timings:Every day',
    'Timings:24 x 7; every day',
    'Timings:05:00 am to 09:00 pm',
    'Timings:11:00 am to 05:00 pm',
    'Timings:24 x 7; every day',
    'Timings:10:00 am to 06:00 pm',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(left: 73),
            child: Text(
              'Mumbai',
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
            //for (int i = 0; i < names.length; i++)
            for (int i = 0; i < img.length; i++)
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
                      onTap: () {
                        if (i == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mum_screen()));
                        }
                        ;
                      },
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
