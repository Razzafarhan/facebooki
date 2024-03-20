import 'dart:math';

import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/headerButtonSection.dart';
import 'package:facebook/widgets/postCard.dart';

import 'assets.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import './widgets/appBarButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      color: Colors.grey.shade300,
      thickness: 1,
    );

    Widget thickdivider = Divider(
      thickness: 10.0,
      color: Colors.grey.shade300,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            AppBarButton(buttonIcon: Icons.search, buttonAction: () {}),
            AppBarButton(buttonIcon: Icons.chat, buttonAction: () {}),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText:'Live',
                  buttonIcon: Icons.video_call,
                  buttonAction: (){},
                  buttonColor: Colors.red
              ),
              buttonTwo: headerButton(
                  buttonText:'Photo',
                  buttonIcon: Icons.photo_library,
                  buttonAction: (){},
                  buttonColor: Colors.green
              ),
              buttonThree: headerButton(
                  buttonText:'Room',
                  buttonIcon: Icons.video_call,
                  buttonAction: (){},
                  buttonColor: Colors.purple
              ),
            ),


            thickdivider,
            RoomSection(),
            thickdivider,
            StorySection(),
            thickdivider,
            PostCard(
              avatar: islam,
              name: 'Islam Makachev',
              publishedAt: '5h',
              postTitle: 'Stay Humble',
              postImage: imaka,
              showBlueTick: true,
              likeCount: '10K',
              shareCount: '500',
              commentCount: '1K',
            ),
            thickdivider,
            PostCard(
              avatar: kchim,
              name: 'Khamzat Chimeav',
              publishedAt: '3h',
              postTitle: 'Iam The Champ I come for Every Body',
              postImage: kchim,
              showBlueTick: true,
              likeCount: '23K',
              shareCount: '300',
              commentCount: '4K',
            ),
            thickdivider,
            SuggestionSection(),
            thickdivider,
            PostCard(
              avatar: costa,
              name: 'Paulo Costa',
              publishedAt: '3h',
              postTitle: 'Iam The Hulk',
              postImage: costa,
              showBlueTick: true,
              likeCount: '24K',
              shareCount: '320',
              commentCount: '1K',
            ),
            thickdivider,
            PostCard(
              avatar: joshua,
              name: 'Anthony Joshua',
              publishedAt: '2h',
              postTitle: 'King in the ring',
              postImage: joshua,
              showBlueTick: true,
              likeCount: '22K',
              shareCount: '420',
              commentCount: '7K',
            ),
            thickdivider,
            PostCard(
              avatar: leon,
              name: 'Leon Edwards',
              publishedAt: '1h',
               postTitle: "",
              postImage: leon,
              showBlueTick: true,
              likeCount: '100K',
              shareCount: '4200',
              commentCount: '10K',
            ),

          ],
        ),
      ),
    );
  }
}
