import 'package:flutter/material.dart';

class CustomExpandedCard extends StatelessWidget {
  final int flex;
  final Color? color;
  final Widget child;

  const CustomExpandedCard({
    super.key,
    required this.flex,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,

      //
      child: SizedBox.expand(
        child: Card(
          // Settings
          color: color,
          elevation: 2,

          child: Padding(padding: const EdgeInsets.all(15), child: child),
        ),
      ),
    );
  }
}
