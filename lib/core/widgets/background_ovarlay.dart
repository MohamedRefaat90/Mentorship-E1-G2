import 'package:flutter/material.dart';

class BackgroundOvarlay extends StatelessWidget {
  const BackgroundOvarlay({super.key, required this.opacity});
  final double opacity;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.black.withOpacity(opacity),
    );
  }
}
