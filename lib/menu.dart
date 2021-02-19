import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Våran meny"),
      ),
      body: Column(
        children: [
          MenuList('Paneret Rødspætta',
              'med kartoffelmos, remouladsovs, dild, grønne ærter og citron'),
          SizedBox(height: 10.0),
          MenuList('Bestefars Hackebøf',
              'med ristede kartofler, løg, flødesavs, syltede agurk og lingon'),
          SizedBox(height: 10.0),
          MenuList('Stegt Flæsk', 'med kartofler og persiljesovs'),
          SizedBox(height: 10.0),
          MenuList('2 rø og 1 grøn',
              '2 pølse med brød og tilbehør og 1 Tuborg grøn'),
          SizedBox(height: 10.0),
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

class MenuList extends StatelessWidget {
  final String course;
  final String details;
  const MenuList(this.course, this.details);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        course,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        return showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(this.course),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(this.details),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Stäng'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
