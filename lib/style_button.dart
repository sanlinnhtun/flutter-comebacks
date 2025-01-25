import 'package:flutter/material.dart';

class StyleButton extends StatelessWidget {
  const StyleButton({super.key, required this.child, required this.onPressed});

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.brown[500],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      onPressed: onPressed,
      child: child,
    );
    ;
  }
}
