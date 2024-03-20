import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey.shade300,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}
