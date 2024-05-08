import '../services/responsive/responsive.dart';

extension SizeExtension on num {
  double get width => ResponsiveService.scaleWidth() * this;

  double get height => ResponsiveService.scaleHeight() * this;

  double get scaleRadius => ResponsiveService.scaleRadius() * this;

  double get scaleText => ResponsiveService.scaleText() * this;
}
