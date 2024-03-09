import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_app/login.dart';

class Tab_Signup extends StatefulWidget {  @override
  State<Tab_Signup> createState() => _Tab_SignupState();
}

class _Tab_SignupState extends State<Tab_Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(30)),
                      labelText: 'First Name',
                      hintText: 'Enter First Name'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      labelText: 'Last Name',
                      hintText: 'Enter Last Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      labelText: 'Email',
                      hintText: 'Enter Email Id'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      labelText: 'Phone Number',
                      hintText: 'Enter Phone Number'),
                ),
              ),SizedBox(
                height: 15,
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
                        context, MaterialPageRoute(builder: (_) =>Login ()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('OR',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20),),
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

