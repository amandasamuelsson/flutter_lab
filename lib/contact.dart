import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kontakta oss"),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            'http://danskengbg.se/content/themes/bliss/img/logo.png',
          ),
          Center(
            child: Text(
              'Andra Långgatan 8, 413 03 Göteborg '
              '0700000000',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40.0),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.red[800]),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Tillbaka'),
          ),
        ],
      ),
    );
  }
}
