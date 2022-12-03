import 'package:flutter/material.dart';
import 'package:learn_flutter/view/home/settings/setting_screen.dart';

import 'view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        SettingsScreen.routeName: (context) {
          final args = ModalRoute.of(context)?.settings.arguments;
          var castArgs = args as SettingsScreen;
          return SettingsScreen(passArgs: castArgs.passArgs);
        }
      },
    );
  }
}
