import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcText {
  CalcText._();

  static Text buttonsText({
    required String label,
    required Color? color
  }) => Text(
    label,
    style: GoogleFonts.rubik(
      color: color,
      fontSize: 24
    ),
  );

}