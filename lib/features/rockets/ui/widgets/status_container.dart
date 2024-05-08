// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spacexx/core/extension/num_extension.dart';
import 'package:spacexx/core/themes/app_pallete.dart';

class StatusContainer extends StatelessWidget {
  final bool isActive;
  const StatusContainer({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.width,
      height: 30.height,
      decoration: BoxDecoration(
        color: isActive ? AppPalette.greenColor : AppPalette.errorColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          isActive ? 'Active' : 'Inactive',
          style: const TextStyle(color: AppPalette.whiteColor, fontSize: 16.0),
        ),
      ),
    );
  }
}
