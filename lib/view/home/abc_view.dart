import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ABCView extends StatelessWidget {
  const ABCView({super.key});

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   child: ListView(
    //     shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     children: [
    //       Icon(Icons.piano),
    //       Icon(Icons.safety_check),
    //       Icon(Icons.wallet),
    //     ],
    //   ),
    // );
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.padding),
        title: Text(
          index.toString(),
        ),
      ),
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
