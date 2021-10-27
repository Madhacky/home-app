import 'package:flutter/material.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({ Key? key }) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image(image: AssetImage('assets/images/ellsa.png'),),
          
          Text('Powered by Oyelabs',style: TextStyle(fontSize: 15),),
          Text('WITH LOVE',style: TextStyle(fontSize: 15),),
        ],),
      ),
    );
  }
}