import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_ui/components.dart';
import 'package:lottie/lottie.dart';
import 'package:signup_ui/welcome.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFF0E0B12),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: h,
        width: w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Stack(
              children: [
                HeadingContainer(text: 'START', bottompad: 0),
                HeadingContainer(text: 'LEARNING', bottompad: 50),
                Subheadingcontainer(text:'CODING IS FUN',),
              ],
            ),
            Lottie.network('https://assets4.lottiefiles.com/packages/lf20_wfkxpgpa.json'),
            ButtonFlat(margin: 0,color: Color(0xFF664AFF),buttonWidth: w,nextpage: 'NULL',widget: Container(
              padding: EdgeInsets.symmetric(vertical: 14),
              width: w,
              child: Center(
                child: Text('Sign in',
                style: kbuttontitle,),
              ),
            ),),
            SizedBox(height: 15,),
            ButtonFlat(buttonWidth: w,color: Color(0xFF17141b),margin: 0,nextpage: 'NULL',
              widget:Container(width: w,
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/google.svg',height: 27,),
                    SizedBox(width: 20,),
                    Text('Signup with Google',
                    style: kbuttontitle,)
                  ],

                ),
              ),) ,)
          ],
        ),
      ),

    ));
  }
}
