import 'package:flutter/material.dart';
import 'package:home_service_app/login.dart';
import 'dart:async';

import 'package:home_service_app/signuppage.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({ Key? key }) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          Signuppage()
                                                         )
                                       )
    ) ;}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
          Image(image: AssetImage('assets/images/ellsa.png'),),
          
          Text('Powered by Oyelabs',style: TextStyle(fontSize: 15),),
          Text('WITH LOVE',style: TextStyle(fontSize: 15),),
        ],),
      ),
    );
  }
}