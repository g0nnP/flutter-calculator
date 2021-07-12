import 'package:flutter/material.dart';
import 'package:flutter_calculator/application/pages/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  MaterialApp build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Calculator",
    home: Calculator(),
  );

}