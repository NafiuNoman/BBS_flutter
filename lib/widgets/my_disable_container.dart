import 'package:flutter/material.dart';

class MyDisableContainer extends StatelessWidget {
  const MyDisableContainer({Key? key, required this.isIgnore, required this.child}) : super(key: key);
  final bool isIgnore;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity:isIgnore?0.5: 1.0,
      child: IgnorePointer(
        ignoring: isIgnore,
        child: child,
      ),
    );
  }
}
