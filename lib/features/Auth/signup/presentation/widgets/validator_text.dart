import 'package:flutter/material.dart';

import '../../../../../core/themes/app_pallete.dart';

class ValidatorText extends StatelessWidget {
  final String title;
  final bool rule;
  final bool? displayWhen;
  const ValidatorText({
    super.key,
    required this.title,
    required this.rule,
    this.displayWhen = true,
  });
  @override
  Widget build(BuildContext context) {
    return displayWhen!
        ? Row(
            children: [
              Icon(
                rule ? Icons.done_rounded : Icons.cancel,
                size: 18,
                color: rule ? AppPalette.greenColor : AppPalette.errorColor,
              ),
              const SizedBox(width: 7),
              Text(
                title,
                style: TextStyle(
                    color:
                        rule ? AppPalette.greenColor : AppPalette.errorColor),
              ),
            ],
          )
        : const SizedBox();
  }
}
