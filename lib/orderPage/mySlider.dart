
import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:revocup_flutter/orderPage/itemGrid.dart';

void main() {
  runApp(const MySlider());
}

const imgShadow = [
  BoxShadow(
      color: Colors.black,
      spreadRadius: 5,
      blurRadius: 9,
      offset: Offset(0, .6)
  )
];

class MySlider extends StatelessWidget {
  const MySlider({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            CarouselSlider(

              items: [

                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    boxShadow: imgShadow,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://th.bing.com/th/id/OIP.dGfYmE04X6VK1WwnHeDBMQHaE7?pid=ImgDet&w=640&h=426&rs=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Drink Name \n\n Creamy and spiced, with perfectly smooth shots of espresso", style: TextStyle(fontWeight: FontWeight.bold),).frosted(
                      frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
                    ),
                    )
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    boxShadow: imgShadow,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://th.bing.com/th/id/OIP.F2gW9t-PpM6DPLMXZkU_OwHaEo?pid=ImgDet&rs=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Drink Name \n\n Creamy and spiced, with perfectly smooth shots of espresso", style: TextStyle(fontWeight: FontWeight.bold),).frosted(
                      frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
                    ),
                    )
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    boxShadow: imgShadow,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://images1.persgroep.net/rcs/U-cxKsPBTLkTuTxqB75ry-iRilE/diocontent/148982786/_fitwidth/694/?appId=21791a8992982cd8da851550a453bd7f&quality=0.9"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Drink Name \n\n Creamy and spiced, with perfectly smooth shots of espresso", style: TextStyle(fontWeight: FontWeight.bold),).frosted(
                      frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
                    ),
                    )
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    boxShadow: imgShadow,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://th.bing.com/th/id/OIP.aeiuPcAwbqIcTQFeK_BQWQHaE7?pid=ImgDet&w=500&h=333&rs=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Drink Name \n\n Creamy and spiced, with perfectly smooth shots of espresso", style: TextStyle(fontWeight: FontWeight.bold),).frosted(
                      frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
                    ),
                    )
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    boxShadow: imgShadow,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://th.bing.com/th/id/OIP.T98IV7uqKjMscVaHKpc6ZAHaEK?pid=ImgDet&w=1920&h=1079&rs=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Drink Name \n\n Creamy and spiced, with perfectly smooth shots of espresso", style: TextStyle(fontWeight: FontWeight.bold),).frosted(
                      frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
                    ),
                    )
                  ),
                ),

              ],

              //Slider Container properties
              options: CarouselOptions(

                height: 280.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 4000),
                viewportFraction: 0.8,
              ),
            ),
          ],
        ),
      )

    );
  }
}
