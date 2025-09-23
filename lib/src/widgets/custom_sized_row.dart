import 'package:flutter/material.dart';

class CustomSizedRow extends StatelessWidget {
  //
  final double? height, width;
  final List<Widget> children;

  const CustomSizedRow({
    super.key,
    this.height,
    this.width,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Sizing
      width: width,
      height: height,

      child: Row(spacing: 30, children: children),
    );
  }
}
