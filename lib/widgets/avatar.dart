import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;


  Avatar(
      {required this.displayImage,
      required this.displayStatus,
      this.displayBorder = false,
      this.height=54,
        this.width=54
      });

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    if (displayStatus == true) {
      statusIndicator = Positioned(
        bottom: 0,
        right: 1, //status indicator
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }

    return Stack(
      children: [

        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
              border: displayBorder ?  Border.all(
                width: 3,
                color: Colors.blue,
              ):Border(),

          ),
          padding: EdgeInsets.only(right: 4, left: 4),
          child: ClipOval(
            child: Image.asset(
              displayImage,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        ),
        statusIndicator,
      ],
    );
  }
}
