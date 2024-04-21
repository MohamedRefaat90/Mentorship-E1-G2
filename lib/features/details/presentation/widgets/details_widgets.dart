import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        const SizedBox(height: 20),
      ],
    );
  }

  static Widget rowWithSpacing(Widget leftWidget, Widget rightWidget) {
    return Row(
      children: [
        leftWidget,
        const SizedBox(width: 150),
        rightWidget,
      ],
    );
  }

  static Widget bottomImage(String imageUrl) {
    return Image.network(imageUrl);
  }

  static Widget iconButton(String label, AssetImage iconImage,
      {VoidCallback? onPressed}) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Image(image: iconImage, height: 24.0, width: 24.0),
      label: Text(label),
      style: TextButton.styleFrom(
        backgroundColor: Colors.black, // Adjust color as needed
      ),
    );
  }

  static Widget youtubeIcon(BuildContext context, Function onPressed) {
    return Column(
      children: [
        Text(
          'Youtube',
          style: AppStyles.font10SemiBoldPurple(context),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/details_screen/social_details_icons/youtube.svg',
            height: 35,
            width: 35,
          ),
        ),
      ],
    );
  }

  static Widget redditIcon(BuildContext context, Function onPressed) {
    return Column(
      children: [
        Text(
          'Reddit',
          style: AppStyles.font10SemiBoldPurple(context),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/details_screen/social_details_icons/reddit.svg', // Corrected file path
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }
}
