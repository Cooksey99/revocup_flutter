import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:revocup_flutter/orderPage/orderPage.dart';

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
        )

    );
  }
}




