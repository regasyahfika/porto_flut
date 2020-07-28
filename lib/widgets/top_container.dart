import 'package:flutter/material.dart';
import 'package:jajalo/colors/light_color.dart';

class TopContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final EdgeInsets padding;

  TopContainer({this.height, this.width, this.child, this.padding });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding != null ? padding : EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: LightColors.kLightYellow2,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0)
        )
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}