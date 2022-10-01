

import 'package:flutter/cupertino.dart';


class ItemGrid extends StatelessWidget {
  const ItemGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [
        Container(
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: NetworkImage("https://th.bing.com/th/id/OIP.T98IV7uqKjMscVaHKpc6ZAHaEK?pid=ImgDet&w=1920&h=1079&rs=1"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: NetworkImage("https://th.bing.com/th/id/OIP.T98IV7uqKjMscVaHKpc6ZAHaEK?pid=ImgDet&w=1920&h=1079&rs=1"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: NetworkImage("https://th.bing.com/th/id/OIP.T98IV7uqKjMscVaHKpc6ZAHaEK?pid=ImgDet&w=1920&h=1079&rs=1"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: NetworkImage("https://th.bing.com/th/id/OIP.T98IV7uqKjMscVaHKpc6ZAHaEK?pid=ImgDet&w=1920&h=1079&rs=1"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: NetworkImage("https://th.bing.com/th/id/OIP.T98IV7uqKjMscVaHKpc6ZAHaEK?pid=ImgDet&w=1920&h=1079&rs=1"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: NetworkImage("https://th.bing.com/th/id/OIP.T98IV7uqKjMscVaHKpc6ZAHaEK?pid=ImgDet&w=1920&h=1079&rs=1"),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
