import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  final Widget child;

  const DialogWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      elevation: 16,
      child: SizedBox(height: 300.0, width: 400.0, child: child),
    );
  }
}
