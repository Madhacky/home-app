
import 'package:flutter/material.dart';

import 'components/button.dart';
class Locationpage extends StatefulWidget {
  const Locationpage({ Key? key }) : super(key: key);

  @override
  _LocationpageState createState() => _LocationpageState();
}

class _LocationpageState extends State<Locationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 150,),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                // const Text('Hey, nice to meet you!',style: TextStyle(color: Colors.black54,fontSize: 14),),
                // const Padding(padding: EdgeInsets.all(10)),
                // const Text('See services around',style: TextStyle(fontSize: 26,color: Colors.black,fontWeight: FontWeight.normal,letterSpacing: 1.5),),
                // const Padding(padding: EdgeInsets.all(15)),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset('assets/images/locationn.png'),
                ),
                const Padding(padding: EdgeInsets.all(22)),
                const Mybutton(textcolor: Colors.white, buttontext: 'Your current location', background: Colors.black),
                const Padding(padding: EdgeInsets.all(10)),
               Padding(
                 padding: const EdgeInsets.only(left:38.0,right: 38),
                 child: TextField(
  decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      filled: true,
      hintStyle: TextStyle(color: Colors.grey[800]),
      hintText: "Some other location",
      fillColor: Colors.white70,
      prefixIcon: Icon(Icons.search)
      ),

),
               )
              ],
            ),
          )
        ],
      ),
      
    );
  }
}