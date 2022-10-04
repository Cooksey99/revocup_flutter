

import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revocup_flutter/orderPage/mySlider.dart';


class ItemGrid extends StatelessWidget {
  const ItemGrid({super.key});

  @override

  Widget build(BuildContext context) {


    return Container(
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          Container(
            height: 80.0,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              boxShadow: imgShadow,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: NetworkImage("https://mixthatdrink.com/wp-content/uploads/2015/03/irish-coffee-3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Drink Name", style: TextStyle(fontWeight: FontWeight.bold,),).frosted(
              frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
            ),),)
          ,
          Container(
            height: 80.0,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              boxShadow: imgShadow,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: NetworkImage("https://www.acouplecooks.com/wp-content/uploads/2021/05/Latte-Art-066.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Drink Name", style: TextStyle(fontWeight: FontWeight.bold,),).frosted(
              frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
            ),),)
          ,
          Container(
            height: 80.0,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              boxShadow: imgShadow,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: NetworkImage("https://coffeeatthree.com/wp-content/uploads/iced-coffee-featured.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Drink Name", style: TextStyle(fontWeight: FontWeight.bold,),).frosted(
              frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
            ),),)
          ,
          Container(
            height: 80.0,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              boxShadow: imgShadow,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: NetworkImage("https://static01.nyt.com/images/2020/04/08/dining/08whippedcoffee-drink/08whippedcoffee-drink-mediumSquareAt3X.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Drink Name", style: TextStyle(fontWeight: FontWeight.bold,),).frosted(
              frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
            ),),)
          ,
          Container(
            height: 80.0,
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              boxShadow: imgShadow,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: NetworkImage("https://thequeenbeandotblog.files.wordpress.com/2019/09/autumnlatte.jpg?w=1400"),
                fit: BoxFit.cover,
              ),
            ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Drink Name", style: TextStyle(fontWeight: FontWeight.bold,),).frosted(
              frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
            ),),)
          ,
          Container(
            height: 80.0,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              boxShadow: imgShadow,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: NetworkImage("https://www.lemontreedwelling.com/wp-content/uploads/2021/02/mexican-coffee-3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Drink Name", style: TextStyle(fontWeight: FontWeight.bold,),).frosted(
              frostColor: Colors.white,
              blur: .6,
              borderRadius: BorderRadius.circular(6),
              padding: EdgeInsets.all(6)
            ),),)
      ],
    ));
  }
}
