import 'package:flutter/material.dart';

class AnimatedBoxSclae extends StatelessWidget {
  final Widget child;
  AnimatedBoxSclae({Key? key, required this.child}) : super(key: key);

  final ValueNotifier<bool> _translateOffset = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        _translateOffset.value = true;
      },
      onExit: (event) {
        _translateOffset.value = false;
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: _translateOffset,
        builder: (_, value, __) {
          return AnimatedScale(
            duration: const Duration(milliseconds: 100),
            scale: value ? 0.95 : 1.0,
            child: child,
          );
        },
      ),
    );
  }
}
