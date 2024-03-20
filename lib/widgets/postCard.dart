import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButtonSection.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postImage,
    required this.postTitle,
    required this.commentCount,
    required this.likeCount,
    required this.shareCount,
    this.showBlueTick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleHeading(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: 'Share',
                  buttonIcon: Icons.thumb_up_alt_outlined,
                  buttonAction: () {},
                  buttonColor: Colors.grey.shade700),
              buttonTwo: headerButton(
                  buttonText: 'Comment',
                  buttonIcon: Icons.message_outlined,
                  buttonAction: (){},
                  buttonColor: Colors.grey.shade700),
              buttonThree: headerButton(
                  buttonText: 'Share',
                  buttonIcon: Icons.share,
                  buttonAction: (){},
                  buttonColor: Colors.grey.shade700)),

        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            'Islam Makachev',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10.0),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey.shade700,
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey.shade700,
        ),
      ),
    );
  }

  Widget imageSection() {
    return Container(

        child: Image.asset(postImage));
  }

  Widget titleHeading() {
    return postTitle!= null && postTitle!="" ?
 Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ):SizedBox();
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    // Add any other decoration properties as needed
                  ), // Add some spacing between the square and the icon
                  child: Icon(Icons.thumb_up, color: Colors.white, size: 10),
                ),
                SizedBox(width: 6),
                // Add some spacing between the icon and the text
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width: 5),
                displayText(label: 'Comments'),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: 'Shares'),
                SizedBox(width: 10),
                Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    width: 23,
                    height: 23),
                IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.arrow_drop_down, color: Colors.grey.shade700),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.grey.shade900,
        fontSize: 15.0,
      ),
    );
  }
}
