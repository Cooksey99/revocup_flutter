import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        primarySwatch: Colors.blue,
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
        appBar: AppBar (
          title: const Center(
              child: Text("Revocup Coffee")
          ),
          backgroundColor: Colors.brown,
          bottom: TabBar(
            tabs: navbarTab,
          ),
        ),
        body: MySlider(),
      )
    );
  }
}

class MySlider extends StatelessWidget {
  const MySlider({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center (
          child: Text("Monthly Specials"),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [

              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://th.bing.com/th/id/OIP.dGfYmE04X6VK1WwnHeDBMQHaE7?pid=ImgDet&w=640&h=426&rs=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://th.bing.com/th/id/OIP.F2gW9t-PpM6DPLMXZkU_OwHaEo?pid=ImgDet&rs=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images1.persgroep.net/rcs/U-cxKsPBTLkTuTxqB75ry-iRilE/diocontent/148982786/_fitwidth/694/?appId=21791a8992982cd8da851550a453bd7f&quality=0.9"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://th.bing.com/th/id/OIP.aeiuPcAwbqIcTQFeK_BQWQHaE7?pid=ImgDet&w=500&h=333&rs=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://th.bing.com/th/id/OIP.T98IV7uqKjMscVaHKpc6ZAHaEK?pid=ImgDet&w=1920&h=1079&rs=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 500.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 600),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),

    );
  }
}