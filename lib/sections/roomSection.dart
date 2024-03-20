import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        children: [
          createRoom(),
          Avatar(displayImage: khabib,displayStatus: true),
          Avatar(displayImage: khamzat,displayStatus: true),
          Avatar(displayImage: costa,displayStatus: true),
          Avatar(displayImage: islam,displayStatus: true),
          Avatar(displayImage: joshua,displayStatus: true),
        ],
      ),
    );
  }
}

Widget createRoom() {
  return Container(
    padding: EdgeInsets.only(right: 5,left: 5),
    child: OutlinedButton.icon(
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create\n Room",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      onPressed: () {
        print("Create a Chat room");
      },
      style: OutlinedButton.styleFrom(
        side: BorderSide(
            width: 2.0,
            color:
                Colors.blue.shade100), // Adjust the width and color as needed
      ),
    ),
  );
}
