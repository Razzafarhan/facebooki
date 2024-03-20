import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text('People you may know'),
            trailing: IconButton(
              onPressed: () {
                print('Clicked');
              },
              icon: Icon(Icons.more_horiz, color: Colors.grey.shade700),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: 'Dana White',
                  avatar: dana,
                  addFriend: () {},
                  mutualFriends: '4 Mutual Friend',
                  removeFriend: (){},
                ),
                SuggestionCard(
                  name: 'Raza Farhan',
                  avatar: raza,
                  addFriend: () {},
                  mutualFriends: '5 Mutual Friend',
                  removeFriend: (){},
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
