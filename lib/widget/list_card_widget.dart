import 'package:flutter/material.dart';
import 'package:grafix/constans.dart';

class ListCardWidget extends StatelessWidget {
  final Widget child;
  final Function() onTap;

  const ListCardWidget({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: InkWell(
          child: child,
          onTap: onTap,
        ),
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        constraints: const BoxConstraints(minHeight: 30),
        decoration: const BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
