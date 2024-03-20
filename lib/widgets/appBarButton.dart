import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  AppBarButton({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor=Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
            buttonIcon,
            color: iconColor,
            size: 25.0),
        onPressed: buttonAction,
      ),
    );
  }
}
