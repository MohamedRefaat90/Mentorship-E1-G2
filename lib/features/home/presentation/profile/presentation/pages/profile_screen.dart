import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/home/presentation/profile/widgets/custome_text_button.dart';
import 'package:mentorship_e1_g3/features/home/presentation/profile/widgets/profile_list_builder.dart';

import '../../../../../../core/themes/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPallete.homeBG,
        centerTitle: false,
        title: Text(
          "Profile",
          style: AppStyles.bold24(context),
        ),
      ),
      backgroundColor: AppPallete.homeBG,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 3),
                  image: const DecorationImage(
                    image: AssetImage(Assets.pro),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Visibility(
                  visible: false,
                  child: Text(
                    "please login to see your profile",
                    style: AppStyles.semiBold16(context),
                  )),
              Text(
                "Amira Mohamed",
                style: AppStyles.bold24(context),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),ProfileListBuilder().buildProfileListItems(),
          SizedBox(
            height: 40.h,
          ),
          const CustomTextButton()
        ],
      ),
    );
  }

  
  
}



