import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var background = SizedBox(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login_background.png"),
                fit: BoxFit.cover)),
      ),
    );
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        background,
        child,
      ],
    );
  }
}
