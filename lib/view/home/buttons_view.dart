import 'package:flutter/material.dart';

class ButtonViews extends StatefulWidget {
  const ButtonViews({super.key});

  @override
  State<ButtonViews> createState() => _ButtonViewsState();
}

class _ButtonViewsState extends State<ButtonViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ),
          ],
        ),
      ),
    );
  }
}
