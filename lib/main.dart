import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jajalo/colors/light_color.dart';
import 'screens/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: LightColors.kLightYellow,
    statusBarColor: Color(0xffffb969)
  ));

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        iconTheme: IconThemeData(size: 36.0, color: Colors.black87),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: LightColors.kDarkBlue,
          fontFamily: 'Poppins'
        )
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}