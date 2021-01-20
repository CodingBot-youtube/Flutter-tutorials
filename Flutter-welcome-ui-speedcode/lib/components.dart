import 'package:flutter/material.dart';

const kheadingstyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 60,
  fontWeight: FontWeight.bold,
  color: Color(0xFF40c4ff),
);

const ksubheading = TextStyle(
  color: Colors.white,
  fontSize: 25,
);

const kbuttontitle = TextStyle(color: Colors.white70,fontSize: 20);

class HeadingContainer extends StatelessWidget {
  HeadingContainer({@required this.text,@required this.bottompad});
  final String text;
  final double bottompad;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, bottompad, 0, 0),
      child: Text(
        text,
        style: kheadingstyle,
      ),
    );
  }
}

class Subheadingcontainer extends StatelessWidget {
  Subheadingcontainer({
    this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 110, 0, 0),
      child: Text(
        text,
        style: ksubheading,
      ),
    );
  }
}

class ButtonFlat extends StatelessWidget {
  ButtonFlat(
      {this.margin, this.widget, this.color, this.buttonWidth, this.nextpage});

  final String nextpage;
  final Color color;
  final Widget widget;
  final double buttonWidth;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, nextpage);
      },
      splashColor: Color(0xFF40c4ff),
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        margin: EdgeInsets.all(margin),
        width: buttonWidth,
        child: Center(child: widget),
      ),
    );
  }
}

