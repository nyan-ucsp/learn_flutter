import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/view/home/buttons_view.dart';
import 'package:learn_flutter/view/home/settings/setting_screen.dart';

import 'home/abc_view.dart';
import 'home/home_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  int _currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    log("initState");
    WidgetsBinding.instance.addObserver(this);
    _pageController = PageController();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    log("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    log("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    log("dispose");
    WidgetsBinding.instance.removeObserver(this);
    _pageController.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    log("deactivate");
    super.deactivate();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    log(state.name);
  }

  @override
  Widget build(BuildContext context) {
    log("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("HELLO"),
                ),
              );
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Account Name"),
              accountEmail: Text("Email"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.more),
              onTap: () {
                Navigator.of(context).pushNamed(SettingsScreen.routeName);
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => SettingsScreen(
                //       passArgs: "Settings",
                //     ),
                //   ),
                // );
              },
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.settings),
              title: Text("Settings"),
              trailing: Icon(CupertinoIcons.mail),
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          _currentIndex = value;
          if (mounted) setState(() {});
        },
        children: [
          ButtonViews(),
          HomeView(),
          ABCView(),
        ],
      ),
      // LayoutBuilder(
      //   builder: (context, constraints) {
      //     return SingleChildScrollView(
      //       child: ConstrainedBox(
      //         constraints: BoxConstraints(
      //           minWidth: constraints.maxWidth,
      //           minHeight: constraints.maxHeight,
      //         ),
      //         child: Container(
      //           height: 1000,
      //           color: Colors.red,
      //           child: Center(
      //             child: Text("Hello"),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          _pageController.jumpToPage(index);
          if (mounted) setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_rounded), label: "MAIN"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "ABC"),
        ],
      ),
    );
  }
}
