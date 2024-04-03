import 'package:flutter/material.dart';

import 'shadow_divider_for_login_with_text.dart';

class LoginWithText extends StatelessWidget {
  const LoginWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 90,
              child: Divider(
                color: Colors.white,
                thickness: 2,
                height: 3,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("or Login With"),
            ),
            SizedBox(
              width: 90,
              child: Divider(
                color: Colors.white,
                thickness: 2,
                height: 3,
              ),
            ),
          ],
        ),
        ShadowDividerForLoginWithText(horizontalOffest: 0.77),
        ShadowDividerForLoginWithText(horizontalOffest: 0.05)
      ]),
    );
  }
}
