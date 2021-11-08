import 'package:flutter/material.dart';
import 'package:grafix/constans.dart';

class ButtonWidget extends StatelessWidget {
  final Widget child;
  final Function() onTap;

  const ButtonWidget({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: const BoxDecoration(
          color: kRedColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
    );
  }
}
