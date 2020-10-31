import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                image: AssetImage("assets/images/health.png"),
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
