import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Screen 2 Images Horizontal')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Image.network(
                    'https://i.pinimg.com/originals/d0/f3/93/d0f393f8b32962e648d4a4a2f8971fa5.jpg'),
              ),
              Expanded(
                flex: 2, //Asigna doble de espacio que sus hermanos
                child: Image.network(
                    'https://i.pinimg.com/originals/12/fd/2e/12fd2e965d8e6c72440bb080378f714b.jpg'),
              ),
              Expanded(
                  child: Image.network(
                      'https://i.pinimg.com/originals/96/5a/f4/965af4cc34d79b967b3914a605e86452.jpg'))
            ],
          ),
        ),
      ),
    );
  }
}
