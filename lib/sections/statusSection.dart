import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

import '../widgets/avatar.dart';

class StatusSection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Avatar(displayImage: khabib,displayStatus: false),
      title: TextField(
        decoration: InputDecoration(
          hintText: "what's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),

      ),

    );
  }
}
