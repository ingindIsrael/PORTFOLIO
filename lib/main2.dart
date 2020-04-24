import 'package:flutter/material.dart';
import 'objective.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'israel objective',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      home: ProfilePage2(),
    );
  }
}
