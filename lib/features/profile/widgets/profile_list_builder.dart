

import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/profile/widgets/profile_list_items.dart';


class ProfileListBuilder {
  Widget buildProfileListItems() {
    return Column(
      children: [
        for (final item in profileItems)
          ListTile(
            leading: Icon(
              item.icon,
              color: AppPallete.purple,
            ),
            title: Text(
              item.title,
             
            ),
            onTap: () {},
          ),
      ],
    );
  }
}
