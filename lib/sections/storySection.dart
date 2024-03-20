import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StorySection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
             StoryCard(
               labelText: 'Add to your Story',
               avatar: khabib,
               story: khabib,
               createStoryStatus: true,
             ),
          StoryCard(
            labelText: 'Khamzat Chimeav',
            avatar: khamzat,
            story: kchim,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Islam Makachev',
            avatar: islam,
            story: imaka,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Anthony Joshua',
            avatar: joshua,
            story: joshua,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Leon Edwards',
            avatar: leon,
            story: leon,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Paulo Costa',
            avatar: costa,
            story: costa,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
