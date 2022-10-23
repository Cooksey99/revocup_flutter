import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:revocup_flutter/orderPage/orderPage.dart';

void main() {
  runApp(const MyFooter());
}

const imgShadow = [
  BoxShadow(
      color: Colors.black,
      spreadRadius: 5,
      blurRadius: 9,
      offset: Offset(0, .6)
  )
];

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Container(padding: const EdgeInsets.all(8.0),
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("Footer"),
        ),

    );
  }
}




