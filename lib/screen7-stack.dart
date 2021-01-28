import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen7Stack extends StatelessWidget {
  static final showCard = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        title: Text('Screen 7 Stack y Card',
            style: TextStyle(color: Colors.black)),
      ),
      body: Center(child: showCard ? _buildCard() : _buildStack()),
    );
  }

  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text('1625 Main Street',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('(408) 555-1212',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('costa@example.com'),
              leading: Icon(Icons.contact_mail, color: Colors.blue[500]),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/600x315/8b/e1/8f/8be18fb14c8f5675ca976c1d9f544306.jpg'),
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Text(
            'Mia B',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        )
      ],
    );
  }
}
