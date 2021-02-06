import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Screen9Animaciones extends StatelessWidget {
  Widget build(BuildContext context) {
    timeDilation = 2.0; // 1.0 means normal animation speed.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Center(
        child: PhotoHero(
          photo:
              'https://i.pinimg.com/originals/78/2e/f3/782ef318c1c63f74cb522c345bf71271.jpg',
          width: 300.0,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<Null>(builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(title: const Text('Description')),
                  body: Container(
                    color: Colors.lightBlueAccent,
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.topLeft,
                    child: ListView(
                      padding: const EdgeInsets.all(4),
                      children: [
                        PhotoHero(
                          photo:
                              'https://i.pinimg.com/originals/78/2e/f3/782ef318c1c63f74cb522c345bf71271.jpg',
                          width: 300.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Text('Cuervo Vikings',
                            style: TextStyle(color: Colors.white)),
                        Text('Description .....',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key key, this.photo, this.onTap, this.width})
      : super(key: key);
  final String photo;
  final VoidCallback onTap;
  final double width;

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.network(photo, fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
