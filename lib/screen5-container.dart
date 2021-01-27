import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen5Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Screen 5 Container'),
      ),
      body: _buildImageColumn(),
    );
  }

  Widget _buildImageColumn() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: [
          _buildImageRow(),
          _buildImageRow(),
        ],
      ),
    );
  }

  Widget _buildDecoratedImage() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.network(
            'https://i.pinimg.com/originals/d0/f3/93/d0f393f8b32962e648d4a4a2f8971fa5.jpg'),
      ),
    );
  }

  Widget _buildImageRow() {
    return Row(
      children: [
        _buildDecoratedImage(),
        _buildDecoratedImage(),
      ],
    );
  }
}
