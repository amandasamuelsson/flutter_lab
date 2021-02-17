import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red[800]),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Restaurang Dansken'),
        ),
        body: Center(
          child: Text('Välkommen till en unik restaurang'),
        ),
      ),
    );
  }
}
