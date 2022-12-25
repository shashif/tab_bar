import 'package:flutter/material.dart';
import 'package:tab_bar/one.dart';
import 'package:tab_bar/two.dart';

import 'drawer_menu.dart';

void main() {
  runApp(const MaterialApp(
    title: "This is tab bar",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                const Tab(
                  icon: Icon(Icons.message),
                ),
                const Tab(
                  icon: Icon(Icons.call),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              const one(),
              const two(),
            ],
          ),
          drawer: DrawerMenu(),
        ),
      ),
    );
  }
}
