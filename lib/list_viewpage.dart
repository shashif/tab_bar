import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {


  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List<Color> color=[Colors.green,Colors.blue,Colors.red, Colors.tealAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview page'),
      ),
     body: ListView.builder(
         itemCount: 4,
         itemBuilder: (context, index){
       return Center(
         child: Container(

           width: 100,
           height: 100,
           color: color[index],

         ),
       );
     }),

    );
  }
}
