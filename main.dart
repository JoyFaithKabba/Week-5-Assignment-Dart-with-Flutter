import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_my_app', // Name of the app
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Simple App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Welcome Text
              Text(
                'Welcome to Flutter!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),

              // Button
              ElevatedButton(
                onPressed: () {
                  print('Button Clicked!');
                },
                child: Text('Click Me'),
              ),
              SizedBox(height: 20.0),

              // Image from Internet (New URL)
              Image.network(
                'https://picsum.photos/200/200', // Random image URL
                height: 150.0,
                width: 150.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
