import 'package:flutter/material.dart';
import 'package:grafix/constans.dart';

class ReusableCardList extends StatelessWidget {
  final Widget child;

  const ReusableCardList({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: kListColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
