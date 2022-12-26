import 'package:flutter/material.dart';
import 'package:tab_bar/one.dart';
import 'package:tab_bar/two.dart';

import 'drawer_menu.dart';

void main() {
  runApp(const MaterialApp(
    title: "This is tab bar",
    home: HomePage(),
    debugShowCheckedModeBanner: false,
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
            actions: [
              PopupMenuButton(
                  onSelected: (value) {
                    if (value == 'call') {
                      print('Call');
                    }

                    if (value == 'message') {
                      print('Message');
                    }
                  },
                  offset: Offset(30.0, 40.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 2,
                              color: Colors.teal,
                            ))),
                            child: Text('CAll')),
                        value: 'call',
                      ),
                      PopupMenuItem(
                        child: Text('Message'),
                        value: 'message',
                      ),
                      PopupMenuItem(
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      width: 2,
                                      color: Colors.teal,
                                    ))),
                            child: Text('Message')),
                        value: 'message',
                      ),
                    ];
                  })
            ],
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
