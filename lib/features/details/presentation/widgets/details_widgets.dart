import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';

class SpaceXDetailsWidgets {
  static Widget topImage(String imageUrl) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 75.0,
        child: Image.network(imageUrl),
      ),
    );
  }

  static Widget textWithSpacing(String text, TextStyle style) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: style,
        ),
        SizedBox(height: 20), // SizedBox with height 20
      ],
    );
  }

  static Widget rowWithSpacing(Widget leftWidget, Widget rightWidget) {
    return Row(
      children: [
        leftWidget,
        SizedBox(width: 150), // SizedBox with width 150
        rightWidget,
      ],
    );
  }

  static Widget bottomImage(String imageUrl) {
    return Image.network(imageUrl);
  }
}
