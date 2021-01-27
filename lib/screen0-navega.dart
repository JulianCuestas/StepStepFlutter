import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts_app/screen1-images.dart';
import 'package:layouts_app/screen2-images.dart';
import 'package:layouts_app/screen3-icons.dart';
import 'package:layouts_app/screen4-card.dart';
import 'package:layouts_app/screen5-container.dart';

class Screen0Navega extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0 Navega'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.red,
              child: Text('Ir a Screen 1 Images Vertical',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen1Images()));
              },
            ),
            RaisedButton(
              color: Colors.black,
              child: Text('Ir a Screen 2 Images Horizontal',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2Images()));
              },
            ),
            RaisedButton(
              color: Colors.purple[300],
              child: Text('Ir a Screen 3 Icons',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen3Icons()));
              },
            ),
            RaisedButton(
              color: Colors.blueGrey[900],
              child: Text('Ir a Screen 4 Card',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen4Card()));
              },
            ),
            RaisedButton(
              color: Colors.brown,
              child: Text('Ir a Screen 5 Container',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Screen5Container()));
              },
            )
          ],
        ),
      ),
    );
  }
}
