import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset('asset/bg.jpeg'),
                  Positioned(
                      left: 50,
                      top: 30,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('asset/person.jpg'),
                      )),
                  Positioned(
                    left: 130,
                    top: 50,
                    child: Text(
                      'Md Shoriful Hasan',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Positioned(
                    left: 130,
                    top: 80,
                    child: Text(
                      'Flutter Developer',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              subtitle: Text('Personal Profile'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {},
            ),
            Divider(thickness: 1,
              color: Colors.deepOrangeAccent,

            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
              subtitle: Text('Important Notification'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {},
            ),
            Divider(thickness: 1,
              color: Colors.deepOrangeAccent,

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              subtitle: Text('Important Settings'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {},
            ),
            Divider(thickness: 1,
              color: Colors.deepOrangeAccent,

            ),
          ],
        ),
      ),
    );
  }
}
