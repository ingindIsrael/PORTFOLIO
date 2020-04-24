import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'israel portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      home: ProfilePage(),
    );
  }
}
