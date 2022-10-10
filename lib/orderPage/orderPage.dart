import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

export 'mySlider.dart';
export 'itemGrid.dart';

void main() {
  runApp(const OrderPage());
}

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: const [
          Text('OrderPage')
        ],
      ),

    );
  }
}