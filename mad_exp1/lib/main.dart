import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'AppBar Example',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Shaian Brass',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 61, 144, 37),
                ),
              ),
              const SizedBox(height: 20.0),
              Image.network(
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRevqC2cBYHfr1BGlD_haU-V1vuiv8bJ-oCPg&usqp=CAU",
  width: 100.0,
  height: 100.0,
),

              const SizedBox(height: 20.0),
              const Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 236, 45, 31),
                size: 40.0,
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'This is a sample text with padding.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
