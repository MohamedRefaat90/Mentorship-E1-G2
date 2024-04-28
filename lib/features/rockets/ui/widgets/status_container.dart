// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: isActive ? AppPallete.greenColor : AppPallete.errorColor,
        borderRadius: BorderRadius.circular(12), 
      ),
      child: Center(
        child: Text(
          isActive ? 'Active' : 'Inactive',
          style: const TextStyle(color: AppPallete.whiteColor, fontSize: 16.0),
        ),
      ),
    );
  }
}
