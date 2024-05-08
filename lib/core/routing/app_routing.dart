import 'package:flutter/material.dart';

import '../../main.dart';

push(Widget child) => Navigator.of(navigator.currentContext!)
    .push(MaterialPageRoute(builder: ((context) => child)));

pushAndRemoveUntil(Widget child) =>
    Navigator.of(navigator.currentContext!).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => child), (route) => false);

pushReplacement(Widget child) => Navigator.of(navigator.currentContext!)
    .pushReplacement(MaterialPageRoute(builder: (context) => child));

popAndPushNamed(String newScreen) =>
    Navigator.of(navigator.currentContext!).popAndPushNamed(newScreen);
