import 'package:flutter/material.dart';
import 'package:home_service_app/components/button.dart';
import 'package:home_service_app/login.dart';
import 'package:home_service_app/otppage.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class Signuppage extends StatefulWidget {
  const Signuppage({ Key? key }) : super(key: key);

  @override
  _SignuppageState createState() => _SignuppageState();
}
class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      
      resizeToAvoidBottomInset: false,
      
      body: Column(
        
        children:  <Widget>[
          Stack(
            children: [ Container(
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height*0.6,
              width: MediaQuery.of(context).size.width,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Vector@3x.png'),),            
            ),
            Positioned(
              top: 0,
              bottom: MediaQuery.of(context).size.height*0.02,
              left:28,
              child: 
              Image(
                height: MediaQuery.of(context).size.height*0.8,
                width: MediaQuery.of(context).size.width*0.88,
                image: const AssetImage('assets/images/Group@2x.png'),)),   
              Positioned(
              top: MediaQuery.of(context).size.height*0.52,
             child: 
              Image(
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
                image: const AssetImage('assets/images/line.png'),))
            ],
          ),
          const Text('Your Home service Expert',
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
           const Text('Continue with Phone Number',
           style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
          
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),  
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
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
         Mybutton(textcolor: Colors.white,background: Colors.black,buttontext: 'SIGN UP',
),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          const Text('VIEW OTHER OPTION'),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text('ALREADY HAVE AN ACCOUNT? '),
              InkWell(
                onTap: () => Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Loginpage()),
),
                child: Text('LOG IN',style: TextStyle(color: Colors.blue),))
            ],
          )
          ],
      ),
    );
  }
}