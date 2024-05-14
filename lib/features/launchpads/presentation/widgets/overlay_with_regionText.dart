import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverlayWithRegionText extends StatelessWidget {
  final String region;
  final double itemHeight;

  const OverlayWithRegionText(
      {super.key, required this.region, required this.itemHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemHeight,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(region,
              style:
                  GoogleFonts.kronaOne().copyWith(fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }
}
