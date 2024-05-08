import 'package:flutter/material.dart';
import 'package:spacexx/core/extension/num_extension.dart';

import 'shadow_divider_for_login_with_text.dart';

class LoginWithText extends StatelessWidget {
  const LoginWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.width),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 90.width,
              child: const Divider(
                color: Colors.white,
                thickness: 2,
                height: 3,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.width),
              child: const Text("or Login With"),
            ),
            SizedBox(
              width: 80.width,
              child: const Divider(
                color: Colors.white,
                thickness: 2,
                height: 3,
              ),
            ),
          ],
        ),
        ShadowDividerForLoginWithText(horizontalOffest: 0.85.width),
        ShadowDividerForLoginWithText(horizontalOffest: -0.08.width)
      ]),
    );
  }
}
