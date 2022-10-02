
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:revocup_flutter/orderPage/itemGrid.dart';

void main() {
  runApp(const MySlider());
}

class MySlider extends StatelessWidget {
  const MySlider({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
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
              height: 300.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),

    );
  }
}
