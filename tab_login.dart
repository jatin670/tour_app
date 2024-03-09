//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_app/home.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tab_Login extends StatefulWidget {  @override
  State<Tab_Login> createState() => _Tab_LoginState();
}

class _Tab_LoginState extends State<Tab_Login> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 45, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder( borderRadius: BorderRadius.circular(30)),
                    labelText: 'Emaill',
                    hintText: 'Enter Email or Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    labelText: 'Password',
                    hintText: 'Enter password'),
              ),
            ),Container(
              margin: EdgeInsets.fromLTRB(190, 10, 0, 0),
      child: Text(
        'Forgot Password ?',
        style: TextStyle(color: Colors.blue, fontSize: 15),
      ),
    ),SizedBox(
              height: 90,
            ),
            Container(
              height: 42,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) =>Home ()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text('OR',style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Card(shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      elevation: 5,
                      child: Image.asset("assets/images/facebook.png",
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      )),
                ),SizedBox(width: 40,),
                Container(
                  child: Card(shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      elevation: 5,
                      child: Image.asset("assets/images/google.png",
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      )),
                ),SizedBox(width: 40,),
                Container(
                  child: Card(shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      elevation: 5,
                      child: Image.asset("assets/images/linkedin.png",
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ))),
              ],
            ),
          ],
        )
        //'username: ${widget.userName}'
        // 'Hashed Password: ${widget.hashedPassword}',
        //style: TextStyle(fontSize: 20.0),
      ),
    );
   }
}

