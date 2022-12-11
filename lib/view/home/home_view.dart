import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> a = [
      Container(
        color: Colors.pink,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.yellow,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.redAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.brown,
        width: 100,
        height: 100,
      ),
    ];
    return Wrap(
      direction: Axis.vertical,
      // children: a.map((e) => e).toList(),
      children: List.generate(
        6,
        (index) => Container(
          color: Colors.pink,
          child: Center(
            child: Text(
              index.toString(),
            ),
          ),
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
