// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'main_page.dart';
import 'emergency_contacts_page.dart';
import 'my_location_page.dart';
import 'settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safety App',
      theme: ThemeData(
        primaryColor: Colors.blueGrey, // Changed primary color
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey, // Changed accent color
        ),
        fontFamily: 'Roboto', // Changed default font
        appBarTheme: AppBarTheme(
          toolbarTextStyle: TextTheme(
            headline6: TextStyle(
              fontSize: 22.0, // Increased font size
              fontWeight: FontWeight.bold, // Made text bold
              color: Colors.white, // Changed text color
            ),
          ).bodyText2, titleTextStyle: TextTheme(
            headline6: TextStyle(
              fontSize: 22.0, // Increased font size
              fontWeight: FontWeight.bold, // Made text bold
              color: Colors.white, // Changed text color
            ),
          ).headline6,
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MainPage(),
        '/emergency': (context) => EmergencyContactsPage(),
        '/location': (context) => MyLocationPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safety App'), // Changed app title
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey, // Changed drawer header color
              ),
              child: Text(
                'Navigation Panel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Emergency Contacts'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/emergency');
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('My Location'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/location');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to the Safety App!',
          style: TextStyle(
            fontSize: 24.0, // Increased font size
            fontWeight: FontWeight.bold, // Made text bold
            color: Colors.blueGrey, // Changed text color
          ),
        ),
      ),
    );
  }
}
