import 'package:flutter/material.dart';
import 'contact.dart';
import 'resume.dart';


void main() => runApp(MyApp4());

class MyApp4 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'israel resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      home: ProfilePage4(),
    );
  }
}
