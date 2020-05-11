import 'dart:html' as html;
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive_widget.dart';
import 'main3.dart';
import 'main2.dart';
import 'main4.dart';
import 'main5.dart';

class ProfilePage3 extends StatelessWidget {
  const ProfilePage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> navButtons() => [
    NavButton(
      text: "Objective",
      onPressed: () {
        
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage2())
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
          "#Letsworktogether",

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
  profileImage(context) => Container(
    height: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.25
        : MediaQuery.of(context).size.width * 0.25,
    width: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.25
        : MediaQuery.of(context).size.width * 0.25,
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.luminosity,
      color: Colors.red,
          // borderRadius: BorderRadius.circular(40),
      shape: BoxShape.circle,

      image: DecorationImage(
        image: AssetImage("images/contact.jpg"),
        alignment: Alignment.center,
        fit: BoxFit.contain,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "You will",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "Contact me",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "through:\n"
        "\n"
            "- Phone at +1 (786) 329-94-22.\n"

            " \n"
            "- Email at Ing.visrael@gmail.com.\n",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),
    Row( children: <Widget>[

      Text(
            "- Linkedin at",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),

      FlatButton(
        textColor: Colors.white70,
        padding: EdgeInsets.only( left: 0.0,),
        //minWith: 0.1,
        onPressed: () {
          launch('https://www.linkedin.com/in/israel-v%C3%A1squez-98a009170/');
        },
        child: Text(
          "here",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    ]
  ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Resume"),
            color: Colors.red,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp4())
              );
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            shape: StadiumBorder(),
            child: Text("GitHub"),
            color: Colors.white,
            onPressed: () {
              html.window.open("https://github.com/ingindIsrael", "Pk");
            },
            padding: EdgeInsets.all(10),
          )
        ],
      )
    ],
  );


    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
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
