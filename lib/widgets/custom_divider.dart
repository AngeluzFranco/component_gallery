import 'package:flutter/material.dart';

enum DividerVariant {
  solid,
  dashed,
  gradient,
}

class CustomDivider extends StatelessWidget {
  final DividerVariant variant;
  final double thickness;
  final Color? color;
  final double indent;
  final double endIndent;

  const CustomDivider({
    super.key,
    this.variant = DividerVariant.solid,
    this.thickness = 1.0,
    this.color,
    this.indent = 0,
    this.endIndent = 0,
  });

  @override
  Widget build(BuildContext context) {
    final dividerColor = color ?? Theme.of(context).colorScheme.outline;

    switch (variant) {
      case DividerVariant.solid:
        return Padding(
          padding: EdgeInsets.only(left: indent, right: endIndent),
          child: Container(
            height: thickness,
            color: dividerColor,
          ),
        );
      case DividerVariant.dashed:
        return Padding(
          padding: EdgeInsets.only(left: indent, right: endIndent),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final dashWidth = 5.0;
              final dashSpace = 3.0;
              final dashCount = (constraints.maxWidth / (dashWidth + dashSpace)).floor();
              return Row(
                children: List.generate(dashCount, (index) {
                  return Row(
                    children: [
                      Container(
                        width: dashWidth,
                        height: thickness,
                        color: dividerColor,
                      ),
                      SizedBox(width: dashSpace),
                    ],
                  );
                }),
              );
            },
          ),
        );
      case DividerVariant.gradient:
        return Padding(
          padding: EdgeInsets.only(left: indent, right: endIndent),
          child: Container(
            height: thickness,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  dividerColor,
                  Colors.transparent,
                ],
              ),
            ),
          ),
        );
    }
  }
}
