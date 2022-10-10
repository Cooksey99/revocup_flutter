import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:revocup_flutter/orderPage/orderPage.dart';

void main() {
  runApp(const MyApp());
}

// var os = 'Web';
var themeColor = Colors.blue;

// void checkOS() {
//   if (Platform.isAndroid || Platform.isIOS) {
//     os = 'Mobile';
//     themeColor = Colors.brown;
//   } else if (kIsWeb) {
//     themeColor = Colors.amber;
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

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
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(child: Navbar());
  }
}

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final navbarOptions = <
        Widget
    >[
      Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new MyApp()),
              );
            },
            child: Icon(Icons.home, size: 64.0)),
      ),
      Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new OrderPage()),
                );
              },
              child: Icon(Icons.coffee, size: 64.0),
          )
      ),
      Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new MyApp()),
              );
            },
            child: Icon(Icons.pin_drop, size: 64.0)),
      ),
      Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => new MyApp()),
          );
        }, child: Icon(Icons.info, size: 64.0),),
      )
    ];

    final navbarTab = <Tab>[
      const Tab(
        icon: Icon(Icons.home),
        text: 'Home',
      ),
      const Tab(
        icon: Icon(Icons.coffee),
        text: 'Order',
      ),
      const Tab(
        icon: Icon(Icons.pin_drop),
        text: 'Location',
      ),
      const Tab(
        icon: Icon(Icons.info),
        text: 'Info',
      ),
    ];

    return DefaultTabController(
        length: navbarOptions.length,
        child: Scaffold(
            backgroundColor: Colors.white24,
            appBar: AppBar(
              title: const Center(child: Text("Revocup Coffee")),
              backgroundColor: Colors.red,
              bottom: TabBar(
                tabs: navbarTab,
              ),
            ),
            body: const TabBarView(
              children: [
                OrderColumn(),
                OrderPage(),
                OrderColumn(),
                OrderColumn()
              ],
            )));
  }
}

class OrderColumn extends StatelessWidget {
  const OrderColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white, Colors.white, Colors.brown, Colors.brown], stops: [0, 0.4, 0.75, 1], begin: Alignment.topCenter, end: Alignment.bottomCenter)
      ),
      child: ListView(
        children: <Widget>[
          Container(
            // padding: const EdgeInsets.only(top: 10),
            height: 300,
            child: MySlider(),
          ),
          Container(

              height: 500,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        width: 200,
                        height: 50,
                        child: Center(child: Text('Popular Drinks', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                  Container(height: 300, child: ItemGrid()),
                  Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      child: Center(
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.red),
                              foregroundColor: MaterialStateProperty.all(Colors.black)),
                          onPressed: () {},
                          child: Container(
                              width: 100,
                              height: 25,
                              child: Center(
                                child: Text("See More", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              )),
                        ),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
