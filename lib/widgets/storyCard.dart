import 'package:facebook/widgets/appBarButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/avatar.dart';

import '../assets.dart';

class StoryCard extends StatelessWidget {
  
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryStatus =false,
    this.displayBorder=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover, // Adjust the fit based on your needs
        ),
        borderRadius: BorderRadius.circular(18.0),
        // Set the desired bord8er radius
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5.0,
              top: 5.0,
              child:createStoryStatus ? AppBarButton(
                buttonIcon: Icons.add,
                buttonAction:(){
                  print("Create new story");
                } ,
                iconColor: Colors.blue,
              ): Avatar(
                displayImage: avatar,
                displayStatus: false,
                displayBorder:  displayBorder,
                width: 35,
                height: 35,
              ),
          ),
          Positioned(
              bottom: 10.0,
              left: 10.0,
              child: Text(
                labelText,
                style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
              ),
              ),
          ),
        ],
      ),
    );
  }
}
