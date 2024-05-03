import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/upcoming/presentation/widgets/log_out_dialog.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:MainAxisAlignment.end,
      children:[
        IconButton(
          onPressed: () {
            showLogOutDialog(context);
          },
          icon: const Icon(
            Icons.logout,
            color:AppPallete.whiteColor,
          )
        )
      ]
    );
  }
}