import 'package:flutter/material.dart';
import 'contact.dart';
import 'work.dart';


void main() => runApp(MyApp5());

class MyApp5 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'israel work',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      home: ProfilePage5(),
    );
  }
}
