import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggestionCard({
    required this.avatar,
    required this.name,
    required this.addFriend,
    required this.mutualFriends,
    required this.removeFriend,
});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          SuggestionImage(),
          SuggestionDetails(),
        ],
      ),
    );
  }

  Widget SuggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          ),
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle:Text(mutualFriends) ,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: addFriend,
                    buttonIcon: Icons.account_box,
                    buttonColor: Colors.blue.shade700,
                    buttonTextColor: Colors.white,
                    buttonText: "Add Friend",
                    buttonIconColor: Colors.white,
                  ),
                  blankButton(
                      buttonAction: removeFriend,
                      buttonText: 'Remove',
                      buttonColor: Colors.grey.shade400,
                      buttonTextColor: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton(
      {required void Function() buttonAction,
      required String buttonText,
      required Color buttonColor,
      required Color buttonTextColor}) {
    return TextButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
      ),
    );
  }

  Widget SuggestionImage() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(20.0), // Adjust the value as needed
          ),
          child: Image.asset(avatar, height: 250, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
