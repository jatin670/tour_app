//import 'package:responsive_mediaquery/responsive_mediaquery.dart';
import 'package:flutter/material.dart';
import 'package:tour_app/login.dart';
import 'package:tour_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black
      ),
      home:SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome to Incredible \n India',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 31.0,
                      fontWeight: FontWeight.bold,foreground: Paint()..shader=LinearGradient(colors: <Color>[Colors.pink,Colors.red,Colors.teal],).createShader(Rect.fromLTRB(0.0, 0.0, 200.0, 100.0))
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                      'Collect Moments not Things',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,foreground: Paint()..shader=LinearGradient(colors: <Color>[Colors.pink,Colors.red,Colors.teal],).createShader(Rect.fromLTRB(0.0, 0.0, 200.0, 100.0))
                      )),
                ),SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Image.asset("assets/images/road.jpeg",),
                ),
                ElevatedButton( style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),minimumSize: Size(127, 42)),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>Login()));
                    },
                    child: Text('Explore',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                        , fontWeight: FontWeight.bold),))
              ],
            ),
          ),
        ),
          Container(
              padding: const EdgeInsets.only(top: 141,left: 140),
              child: Card(shape: const CircleBorder(),
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  child: Image.asset("assets/images/Ellipse.jpg",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )),
            ),
        ]
      ),
    );
  }
}
