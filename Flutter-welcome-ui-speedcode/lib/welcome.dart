import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_ui/components.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF0E0B12),
      body: Container(
        height: h,
        width: w,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: h / 5,
              child: Stack(
                children: [
                  HeadingContainer(
                    text: 'CODING',
                    bottompad: 0,
                  ),
                  HeadingContainer(text: 'BOT', bottompad: 50),
                  Subheadingcontainer(text: 'LEARN TO CODE')
                ],
              ),
            ),
            Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_DYkRIb.json'),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ButtonFlat(
                margin: 10,
                buttonWidth: w / 4,
                color: Color(0xFF664AFF),
                nextpage: 'login',
                widget: Text(
                  '>',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Merinda',
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

