import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mum_screen extends StatefulWidget {
  @override
  State<mum_screen> createState() => _mum_screenState();
}

class _mum_screenState extends State<mum_screen> {
  List<String> imageList = [
    'assets/images/Gateway of India.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'Gateway Of India',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple.shade500),
          ),
          centerTitle: true,
          actions: [
            Icon(
              FontAwesomeIcons.youtube,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.location_on,
              ),
            )
          ]),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: CarouselSlider.builder(
                  itemCount: imageList.length,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 300,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    reverse: false,
                    aspectRatio: 4.0,
                  ),
                  itemBuilder: (context, i, id) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white,
                          )),
                      //ClipRRect for image border radius
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          imageList[i],
                          width: 800,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    'The Gateway of India is an arch monument built during the 20th century in Bombay, India. The monument was erected to commemorate the landing of King George V and Queen Mary at Apollo Bunder on their visit to India in 1911.Built in Indo-Saracenic style, the foundation stone for the Gateway of India was laid on 31 March 1911.\n \nThe structure is an arch made of basalt, 26 metres (85 feet) high. The final design of George Wittet was sanctioned in 1914 and the construction of the monument was completed in 1924. The Gateway was later used as a symbolic ceremonial entrance to India for Viceroys and the new Governors of Bombay.  It served to allow entry and access to India. \n\nThe Gateway of India is located on the waterfront at Apollo Bunder area at the end of Chhatrapati Shivaji Marg in South Mumbai and overlooks the Arabian Sea. The monument has also been referred to as the Taj Mahal of Mumbai, and is the city’s top tourist attraction. \n\nWithin a generation, this grand symbol of empire also became an epitaph: the last British regiment to leave India after the country’s independence in 1947, the First Battalion of the Somerset Light Infantry, passed through the Gateway of India before setting sail for England on February 28, 1948. Today the gateway is one of India’s most popular tourist sites.'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
