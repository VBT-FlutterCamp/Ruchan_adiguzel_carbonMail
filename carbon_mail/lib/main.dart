import 'package:carbon_mail/views/wellcome_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff293855),
        textTheme: TextTheme(
            headline3: TextStyle(color: Colors.white),
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white)),
      ),
      title: 'Carbon Mail',
      home: WellComeView(),
    );
  }
}
