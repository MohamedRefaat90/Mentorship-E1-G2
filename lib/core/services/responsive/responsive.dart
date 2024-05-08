// ignore_for_file: deprecated_member_use

import 'dart:math';
import 'package:flutter/material.dart';

class ResponsiveService {
  static const Size _designSize = Size(375, 812);
  static const bool _splitScreenMode = false;
  static final MediaQueryData _mediaQueryData =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window);

  static Size _switchableDesignSize() {
    return _mediaQueryData.orientation == Orientation.portrait
        ? _designSize
        : const Size(716, 360);
  }

  static double fullScreenHeight({double ratio = 1}) =>
      _mediaQueryData.size.height * ratio;

  static double fullScreenWidth({double ratio = 1}) =>
      _mediaQueryData.size.width * ratio;

  static double availableScreenHeight({double ratio = 1}) =>
      (_mediaQueryData.size.height - _mediaQueryData.viewPadding.vertical) *
      ratio;

  static double availableScreenWidth({double ratio = 1}) =>
      (_mediaQueryData.size.width - _mediaQueryData.viewPadding.horizontal) *
      ratio;

  static Orientation orientation() => _mediaQueryData.orientation;

  static double deviceTopPadding() => _mediaQueryData.padding.top;

  static double deviceBottomPadding() => _mediaQueryData.padding.bottom;

  static double deviceBottomViewPadding() => _mediaQueryData.viewPadding.bottom;

  static double deviceKeyboardHeight() => _mediaQueryData.viewInsets.bottom;

  static double textScaleFactor() => _mediaQueryData.textScaleFactor;

  static double devicePixelRatio() => _mediaQueryData.devicePixelRatio;

  static double scaleWidth() =>
      availableScreenWidth() / _switchableDesignSize().width;

  static double scaleHeight() =>
      (_splitScreenMode
          ? max(availableScreenHeight(), 700)
          : availableScreenHeight()) /
      _switchableDesignSize().height;

  static double scaleRadius() => min(scaleWidth(), scaleHeight());

  static double scaleText() => min(scaleWidth(), scaleHeight());
}
