import 'package:flutter/material.dart';
import 'package:grafix/pages/input_page.dart';
import 'package:grafix/constans.dart';

void main() {
  runApp(const Control());
}

class Control extends StatefulWidget {
  const Control({Key? key}) : super(key: key);

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          color: kRedColor,
        )),
        home: const InputPage());
  }
}
