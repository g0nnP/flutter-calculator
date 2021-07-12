import 'package:flutter/material.dart';

import '../../../constants/colors/calc_colors.dart';
import '../../../constants/styles/apptexts_styles.dart';

class CalcButton extends StatelessWidget {

  CalcButton({
    required this.width,
    required this.height,
    required this.label,
    required this.color,
    required this.callback
  });

  final String label;
  final Color? color;
  final Function(String) callback;
  final double width;
  final double height;

  @override
  InkWell build(BuildContext context) => InkWell(
    onTap: () => callback,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      height: height,
      width: width,
      child: Center(
        child: CalcText.buttonsText(label: label, color: CalcColors.whiteColor)
      )
    ),
  );

}