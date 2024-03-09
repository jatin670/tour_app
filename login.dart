//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_app/tab_login.dart';
import 'package:tour_app/tab_signup.dart';


class Login extends StatefulWidget {
  const Login({Key? key}):super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>
  with SingleTickerProviderStateMixin  {
  late TabController tabController;

  @override
  void initState(){
  tabController = TabController(length: 2,vsync: this);
  super.initState();
  }
  @override
  void dispose(){
  tabController.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
             const   SizedBox(height: 50,),
                Container(
                  //height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20) ),
                  child: Column(
                    children: [
                      Padding(padding:const EdgeInsets.all(5),
                      child: TabBar(
                        labelColor: Colors.white,
                        indicatorColor: Colors.blueAccent,
                        unselectedLabelColor:Colors.black,
                        indicatorWeight: 2,
                        indicator: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        controller: tabController,
                        tabs: const [
                          Tab(child:Text('Login',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18),) ),
                          Tab(child:Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18))),
                        ],
                      ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: TabBarView(
                  controller: tabController,
                  children: [
                    Tab_Login(),
                    Tab_Signup()
                  ],
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}