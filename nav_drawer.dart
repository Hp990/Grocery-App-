import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Harshita Pradhan",
            ),
            accountEmail: Text("hp5861@gmail.com"),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('C:\Users\DELL\Desktop\Grocery'),
                fit: BoxFit.cover,
                // colorFilter: new ColorFilter.mode(Colors.black, BlendMode.dstATop),
              ),
            ),
            currentAccountPicture: ClipOval(
              child: Image.asset(
                'C:\Users\DELL\Desktop\Grocery',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.shopping_bag),
              title: new Text("Orders"),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(Icons.event_note_sharp),
              title: new Text("My Details"),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(Icons.shopping_cart),
              title: new Text("Shopping"),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(Icons.settings),
              title: new Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              }),
          Divider(),
          ListTile(
              leading: Icon(Icons.info),
              title: new Text("About"),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(Icons.power_settings_new),
              title: new Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}