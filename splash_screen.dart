import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_app/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
      Timer(Duration(seconds:2 ), (
          ) { 
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context)=>MyHomePage(title: '',)));
      });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       decoration: BoxDecoration(
         gradient: RadialGradient(
           colors: [Colors.red,
             Colors.black,
           ],
             stops: [
               0.2,
               0.7,
             ]
         )
       ),
        child: Center(
          child: Text('TOUR INFO',style: TextStyle(fontWeight:FontWeight.bold,
              fontSize: 28,color: Colors.white ),),
        ),
      ),
    );
  }
}
