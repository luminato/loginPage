import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: 
          Text('Luminato',
          style: TextStyle(
            color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 12.0
                ),
          ),),
          // Container(
          //   height: 200,
          //   child: WavyAnimatedTextKit(
          //     text: ["Luminato"],
          //     textStyle: TextStyle(
          //           fontSize: 50.0,
          //           fontWeight: FontWeight.bold,
          //           letterSpacing: 12.0
          //       ),
          //       speed: Duration(milliseconds: 200),
          //       isRepeatingAnimation: false,
          //   ),
          // ),
          Container(
            child: TypewriterAnimatedTextKit(
              text: ["Mobile Developer"],
              textStyle: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Agne"
              ),
              textAlign: TextAlign.start,
              speed: Duration(milliseconds: 80),
              repeatForever: false,
            ),
          ),
      ],),
    );
  }
}