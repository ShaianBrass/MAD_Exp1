// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shaian Brass MAD EXP2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 50,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Image.network(
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRevqC2cBYHfr1BGlD_haU-V1vuiv8bJ-oCPg&usqp=CAU",
  width: 100.0,
  height: 100.0,
),

            SizedBox(height: 20),
            Text(
              'Hello, Flutter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'This is a demonstration of text styling, icons, images, assets, padding, and centering in Flutter.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Button pressed!'),
                duration: Duration(seconds: 2), 
              ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
