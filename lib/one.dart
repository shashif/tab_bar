import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tab_bar/list_viewpage.dart';

class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  var dropDownItemValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Message"),
              Divider(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text('This is SnackBar'),
                      backgroundColor: Colors.teal,
                      action: SnackBarAction(
                          label: 'Close',
                          textColor: Colors.white,
                          onPressed: () {
                            SocketException.closed();
                          }),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text('SnackBar Menu')),
              Divider(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, ListViewPage.routeName);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListViewPage()));
                  },
                  child: Text('ListView')),
              Divider(
                height: 10,
              ),
              DropdownButton(
                onChanged: (value) {
                  setState(() {
                    dropDownItemValue = value as int;
                  });
                  print(dropDownItemValue);
                  //for snack bar start
                  final snackBar = SnackBar(
                    content:
                        Text('You have selected Menu ${dropDownItemValue + 1}'),
                    backgroundColor: Colors.teal,
                    action: SnackBarAction(
                        label: 'Close',
                        textColor: Colors.white,
                        onPressed: () {
                          SocketException.closed();
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  //for snack bar end
                },
                value: dropDownItemValue,
                underline: Container(),
                items: [
                  DropdownMenuItem(
                    child: Text('Menu 1'),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text('Menu 2'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Menu 3'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Menu 4'),
                    value: 3,
                  ),
                ],
              ),
              Divider(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      enableDrag: false,
                      builder: (_) {
                        //underScore means context
                        return Container(
                          height: 250,
                          child: GestureDetector(
                            onTap: (){Navigator.pop(context);},
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.favorite),
                                  title: Text('Favorite'),

                                ),
                                ListTile(
                                  leading: Icon(Icons.save),
                                  title: Text('Save'),

                                ),
                                ListTile(
                                  leading: Icon(Icons.add),
                                  title: Text('Add'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.settings),
                                  title: Text('Settings'),
                                ),
                              ],
                            ),
                          ),
                        );

                      },
                    );
                  },
                  child: Text('Bottom Sheet'))
            ],
          ),
        ),
      ),
    );
  }
}
