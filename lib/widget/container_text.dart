import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;

  const ContentText({
    Key? key,
    required this.child,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: margin,
      ),
    );
  }
}
