import 'dart:io';

import 'package:flutter/material.dart';

class one extends StatelessWidget {
  const one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Message"),
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
          ],
        ),
      ),
    );
  }
}
