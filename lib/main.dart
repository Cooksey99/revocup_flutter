import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:revocup_flutter/orderPage/orderPage.dart';



void main() {
  runApp(const MyApp());
}

var os = 'Web';
var themeColor = Colors.blue;

void checkOS() {
  if (Platform.isAndroid || Platform.isIOS) {
    os = 'Mobile';
    themeColor = Colors.brown;
  } else if (kIsWeb) {
    themeColor = Colors.amber;
  }
    print(os);
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  checkOS() {
    // TODO: implement checkOS
    throw UnimplementedError();
  } //checks the operating system


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Revocup',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: themeColor,
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

   return Material(
     child: Navbar()
   );


  }
}

class Navbar extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final navbarOptions = <Widget>[
      const Center(child: Icon(Icons.home, size: 64.0),),
      const Center(child: Icon(Icons.coffee, size: 64.0),),
      const Center(child: Icon(Icons.pin_drop, size: 64.0),),
      const Center(child: Icon(Icons.info, size: 64.0),)
    ];

    final navbarTab = <Tab>[
      const Tab(icon: Icon(Icons.home), text: 'Home',),
      const Tab(icon: Icon(Icons.coffee), text: 'Order',),
      const Tab(icon: Icon(Icons.pin_drop), text: 'Location',),
      const Tab(icon: Icon(Icons.info), text: 'Info',),
    ];

    return DefaultTabController (
      length: navbarOptions.length,
      child: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar (
          title: const Center(
              child: Text("Revocup Coffee")
          ),
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs: navbarTab,
          ),
        ),
        body: const MySlider(),
      )
    );
  }
}


