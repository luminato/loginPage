import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/bgflutter.png",
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
          child
        ],),
    );
  }
}
