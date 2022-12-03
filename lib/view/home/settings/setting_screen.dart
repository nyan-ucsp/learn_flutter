import 'dart:developer';

import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final String passArgs;
  const SettingsScreen({super.key, required this.passArgs});
  static const String routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    log(widget.passArgs);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}
