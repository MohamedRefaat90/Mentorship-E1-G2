import 'package:flutter/material.dart';

import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/features/profile/widgets/custome_text_button.dart';
import 'package:mentorship_e1_g3/features/profile/widgets/profile_list_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPalette.homeBG,
        centerTitle: false,
        title: Text(
          "Profile",
          style: AppStyles.font24BoldWhite(context),
        ),
      ),
      backgroundColor: AppPalette.homeBG,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60.height,
                width: 60.width,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 3),
                  image: const DecorationImage(
                    image: AssetImage(Assets.profile),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 15.width,
              ),
              Text(
                "please login to see your profile",
                style: AppStyles.font16SemiBoldWhite(context),
              ),
            ],
          ),
          SizedBox(
            height: 20.height,
          ),
          ProfileListBuilder().buildProfileListItems(),
          SizedBox(
            height: 40.height,
          ),
          const CustomTextButton(),
        ],
      ),
    );
  }
}
