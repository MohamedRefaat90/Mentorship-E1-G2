import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';

class CustomLaunchAppBar extends StatelessWidget {
  const CustomLaunchAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text('Launches',
             style:AppStyles.bold24(context)
          ),
          const Spacer(),
          IconButton(
            onPressed: () {  }, 
            icon: const Icon(
              Icons.search_outlined,
              color: AppPallete.whiteColor,
            ),
      
          ),
        ],
      ),
    );
  }
}