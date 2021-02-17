import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kontakta oss"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red[800]),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Tillbaka'),
        ),
      ),
    );
  }
}
