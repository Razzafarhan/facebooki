import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
    );
  }
}
