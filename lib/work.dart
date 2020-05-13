import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'responsive_widget.dart';
import 'main2.dart';
import 'main3.dart';
import 'main4.dart';
import 'main5.dart';

class ProfilePage5 extends StatelessWidget {
  const ProfilePage5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> navButtons() => [
    NavButton(
      text: "Objective",
      onPressed: () {
             Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp2()),
        );
      },
    ),
    NavButton(
      text: "Work",
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp5())
        );
      },
    ),
    NavButton(
      text: "Contact",
      onPressed: () {
       // html.window.open("https://pawan.live", "Pk");
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp3())
        );
      },
    ),
  ];


    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black87,

        //appBar: AppBar(
        //  elevation: 0.0,
         // backgroundColor: Colors.indigo,
        //),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: navButtons(),
          ),
        )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(navButtons: navButtons()),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;

  const NavHeader({Key key, this.navButtons}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          PKDot(),
//          Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: navButtons,
            )
        ],
      ),
    );
  }
}

class PKDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "#Projects",

          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),

        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
        @required this.text,
        @required this.onPressed,
        this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: Colors.white,
      ),
      onPressed: onPressed,
      highlightedBorderColor: Colors.white,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage1(context) => Container(
    height: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.85
        : MediaQuery.of(context).size.width * 0.25,
    width: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.85
        : MediaQuery.of(context).size.width * 0.25,
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.luminosity,
      color: Colors.black87,
//            borderRadius: BorderRadius.circular(40),
      shape: BoxShape.rectangle,
      image: DecorationImage(
        image: AssetImage("images/app1.png"),
        alignment: Alignment.center,
        fit: BoxFit.contain,
      ),
    ),
  );

  profileImage2(context) => Container(
    height: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.85
        : MediaQuery.of(context).size.width * 0.35,
    width: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.85
        : MediaQuery.of(context).size.width * 0.35,
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.luminosity,
      color: Colors.black87,
//            borderRadius: BorderRadius.circular(40),
      shape: BoxShape.rectangle,
      image: DecorationImage(
        image: AssetImage("images/app2.png"),
        alignment: Alignment.center,
        fit: BoxFit.contain,
      ),
    ),
  );

  profileImage3(context) => Container(
    height: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.85
        : MediaQuery.of(context).size.width * 0.25,
    width: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.85
        : MediaQuery.of(context).size.width * 0.25,
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.luminosity,
      color: Colors.black87,
//            borderRadius: BorderRadius.circular(40),
      shape: BoxShape.rectangle,
      image: DecorationImage(
        image: AssetImage("images/app3.png"),
        alignment: Alignment.center,
        fit: BoxFit.contain,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {



    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage1(context),profileImage2(context),profileImage3(context), ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage1(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileImage2(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileImage3(context),
        ],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  List<Widget> socialMediaWidgets() {
    return [
      NavButton(
        text: "Objective",
        onPressed: () {
          //html.window.open("https://github.com/iampawan", "Git");
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp2())
          );
        },
        color: Colors.blue,
      ),
      NavButton(
        text: "Work",
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp5())
          );
        },
        color: Colors.blue,
      ),
      NavButton(
        text: "Contact",
        onPressed: () {
          //html.window.open("https://facebook.com/thepawankumaar", "Fb");
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp3())
          );
        },
        color: Colors.blue,
      ),
    ];
  }

  Widget copyRightText() => Text(
    "Israel Vasquez ©️2020",
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.grey,
    ),
  );


    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ...socialMediaWidgets(),
          copyRightText(),
        ],
      ),
    );
  }
}
