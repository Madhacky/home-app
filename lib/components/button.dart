import 'package:flutter/material.dart';
class Mybutton extends StatelessWidget {
 const Mybutton({ @required this.textcolor, @required this.buttontext ,@required this.background});
final Color? textcolor;
final String? buttontext;
final Color? background;

 
  @override
 
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height*0.078,
        width: MediaQuery.of(context).size.width*0.8,
        decoration:  BoxDecoration( color: background,
        borderRadius: const BorderRadius.all(Radius.circular(30)),border: Border.all(color: Colors.grey.shade300)),
        child:  Text(buttontext!,style: TextStyle(color: textcolor,fontWeight: FontWeight.normal,fontSize: 16),),
      ),
    );
  }
}