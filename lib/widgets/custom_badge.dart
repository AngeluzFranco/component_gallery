import 'package:flutter/material.dart';

enum BadgeVariant {
  info,
  success,
  warning,
  error,
}

class CustomBadge extends StatelessWidget {
  final String text;
  final BadgeVariant variant;

  const CustomBadge({
    super.key,
    required this.text,
    this.variant = BadgeVariant.info,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;

    switch (variant) {
      case BadgeVariant.info:
        backgroundColor = Colors.blue.shade100;
        textColor = Colors.blue.shade800;
        break;
      case BadgeVariant.success:
        backgroundColor = Colors.green.shade100;
        textColor = Colors.green.shade800;
        break;
      case BadgeVariant.warning:
        backgroundColor = Colors.orange.shade100;
        textColor = Colors.orange.shade900;
        break;
      case BadgeVariant.error:
        backgroundColor = Colors.red.shade100;
        textColor = Colors.red.shade800;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
