import 'package:flutter/material.dart';

enum CardVariant {
  elevated,
  outlined,
  filled,
}

class CustomCard extends StatelessWidget {
  final Widget child;
  final CardVariant variant;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const CustomCard({
    super.key,
    required this.child,
    this.variant = CardVariant.elevated,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;
    double borderWidth;
    double elevation;

    switch (variant) {
      case CardVariant.elevated:
        backgroundColor = Colors.white;
        borderColor = Colors.transparent;
        borderWidth = 0;
        elevation = 4;
        break;
      case CardVariant.outlined:
        backgroundColor = Colors.white;
        borderColor = Colors.grey.shade400;
        borderWidth = 1.5;
        elevation = 0;
        break;
      case CardVariant.filled:
        backgroundColor = Colors.blue.shade50;
        borderColor = Colors.transparent;
        borderWidth = 0;
        elevation = 0;
        break;
    }

    return Material(
      color: backgroundColor,
      elevation: elevation,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: width,
        height: height,
        padding: padding ?? const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: child,
      ),
    );
  }
}
