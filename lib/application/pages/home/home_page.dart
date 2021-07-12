import 'package:flutter/material.dart';
import 'package:flutter_calculator/application/constants/utils/calc_responsive.dart';
import 'widgets/calc_button.dart';

import '../../constants/colors/calc_colors.dart';

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();

  late final Size _screen;
  late final CalcResponsive _responsive;
}

class _CalculatorState extends State<Calculator> {
  @override
  Scaffold build(BuildContext context) {

    widget._screen = MediaQuery.of(context).size;
    widget._responsive = CalcResponsive(context);

    return Scaffold(
      backgroundColor: CalcColors.backgroundAppColor,
      body: Column(
        children: [
          _calculatorScreen(),
          _calculatorButtons(widget._responsive)
        ],
      ),
    );
  }

  Container _calculatorScreen() => Container(
    height: widget._screen.height * 0.4,
  );

  Container _calculatorButtons(CalcResponsive responsive) => Container(
    height: widget._screen.height * 0.6,
    child: Column(
      children: [
        Row(
          children: [
            CalcButton(
              label: '1', color: CalcColors.baseButtonColor,
              height: responsive.heightResponsive(100),
              width: responsive.widthResponsive(100),
              callback: (a) => print("Mi valor es: a"),
            ),
          ],
        )
      ],
    )
  );
}