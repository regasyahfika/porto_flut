import 'package:flutter/material.dart';
// import 'package:jajalo/colors/light_color.dart';

class IconContainer extends StatelessWidget {
  final String title;
  final IconData icon;

  IconContainer({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Icon(
            icon,
            size: 20.0,
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(15.0, 15.0, 0, 15.0)),
        Container(
          child: Text(title),
        ),
      ],
    );
  }
}
