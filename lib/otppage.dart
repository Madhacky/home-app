
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'components/button.dart';
class Otppage extends StatefulWidget {
  const Otppage({ Key? key }) : super(key: key);

  @override
  _OtppageState createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 90,),
          Container(
            
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Image.asset('assets/images/otp.png',height: 250,width: 170,),
                const Padding(padding: EdgeInsets.all(20)),
                const Text('OTP VERIFICATION',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.
                bold),),
                const Padding(padding: EdgeInsets.all(13)),
                const Text('Enter the OTP sent to +9879878975',style: TextStyle(fontSize: 16,color: Colors.black),),
                const Padding(padding: EdgeInsets.all(30)),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: OTPTextField(
  length: 4,
  width: MediaQuery.of(context).size.width,
  fieldWidth: 40,
  style: const TextStyle(
    fontSize: 17
  ),
  textFieldAlignment: MainAxisAlignment.spaceAround,
  fieldStyle: FieldStyle.underline,
  onCompleted: (pin) {
    // ignore: avoid_print
    print("Completed: " + pin);
  },
),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('OTP not recived? ',style: TextStyle(color: Colors.black54),),
                    const Text('RESEND OTP',style: TextStyle(color: Colors.black54),),
                  ],
                ),

                const Padding(padding: EdgeInsets.all(20)),
                const Mybutton(textcolor: Colors.white, buttontext: 'VERIFY & PROCEED', background: Colors.black)
              ],
            ),
            
          )
        ],
      ) ,
      
    );
  }
}