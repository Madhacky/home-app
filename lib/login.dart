
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'components/button.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({ Key? key }) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Container(
        
        alignment: Alignment.center,
        child: Column(
          
          children:  <Widget>[
            const SizedBox(height: 165,),
            const Text('Welcome back!',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 70,),
            const Mybutton(textcolor: Colors.white, buttontext: 'CONTINUE WITH FACEBOOK',background: Color(0xFF7583CA),),
            const SizedBox(height: 20,),
            const Mybutton(textcolor: Colors.black, buttontext: 'CONTINUE WITH GOOGLE',background: Colors.white,),
            const SizedBox(height: 40,),
            const Text('OR CONTINUE WITH PHONE NUMBER',style: TextStyle(color: Colors.grey,fontSize: 14),),
            const SizedBox(height: 20,),
            Container(
          padding: const EdgeInsets.only(left: 10,right: 10,),
          child: IntlPhoneField(
          decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
          ),
    ),
    initialCountryCode: 'IN',
    onChanged: (phone) {
          // ignore: avoid_print
          print(phone.completeNumber);
    },
),
        ),
           const SizedBox(height: 20,),
           const Mybutton(textcolor: Colors.white, buttontext: 'LOG IN', background: Colors.black),
           const Padding(padding: EdgeInsets.all(10)),
           const Text('Forgot Password?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
           const Padding(padding: EdgeInsets.all(20)), 
           const Text('DONT HAVE AN ACCOUNT? SIGN UP',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
           const Padding(padding: EdgeInsets.all(20)),  
                  
          ],
        ),
      ),
      
    );
  }
}