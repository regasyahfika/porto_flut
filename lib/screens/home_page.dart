import 'package:flutter/material.dart';
import 'package:jajalo/colors/light_color.dart';
import 'package:jajalo/widgets/icon_container.dart';
import 'package:jajalo/widgets/top_container.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  final String description =
      "Hallo My name is Rega my job as a Software Engineer, I really like traveling but if there is a widowed";

  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: LightColors.kDarkBlue,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  Text desc(String desc) {
    return Text(
      desc,
      style: TextStyle(
        color: LightColors.kDarkBlue,
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.60,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          TopContainer(
            height: 250,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      color: LightColors.kDarkBlue,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.search,
                      color: LightColors.kDarkBlue,
                      size: 30.0,
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new CircularPercentIndicator(
                        radius: 90.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: 1,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: LightColors.kLightYellow,
                        backgroundColor: LightColors.kLavender,
                        center: CircleAvatar(
                          // backgroundColor: LightColors.kBlue,
                          radius: 36.0,
                          backgroundImage:
                              AssetImage('assets/images/avatar.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Rega Syahfika',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 22.0,
                            color: LightColors.kDarkBlue,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Software Engineer',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: LightColors.kDarkBlue,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: new Icon(MdiIcons.facebook),
                            onPressed: () {
                              print('Using the sword');
                            }),
                        IconButton(
                          icon: new Icon(MdiIcons.twitter),
                          onPressed: () {
                            print('twitter');
                          },
                        ),
                        IconButton(
                          icon: new Icon(MdiIcons.linkedin),
                          onPressed: () {
                            print('linkedin');
                          },
                        ),
                        IconButton(
                          icon: new Icon(MdiIcons.github),
                          onPressed: () {
                            print('github');
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.transparent,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            subheading('About us'),
                          ],
                        ),
                        // Row(
                        //   children: <Widget>[desc(description)],
                        // )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: desc(description))
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[subheading('Personal')],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        IconContainer(
                          // icon: new Icon(MdiIcons.gen),
                          icon: Icons.face,
                          title: 'Male',
                        ),
                        IconContainer(
                          // icon: new Icon(MdiIcons.gen),
                          icon: Icons.play_circle_outline,
                          title: 'Islam',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
