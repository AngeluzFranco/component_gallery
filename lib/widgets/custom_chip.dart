import 'package:flutter/material.dart';

enum ChipVariant {
  defaultChip,
  outlined,
  colored,
}

class CustomChip extends StatelessWidget {
  final String label;
  final ChipVariant variant;
  final VoidCallback? onDeleted;
  final bool selected;

  const CustomChip({
    super.key,
    required this.label,
    this.variant = ChipVariant.defaultChip,
    this.onDeleted,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    Color borderColor;
    double borderWidth;

    switch (variant) {
      case ChipVariant.defaultChip:
        backgroundColor = selected ? Colors.blue.shade100 : Colors.grey.shade200;
        textColor = selected ? Colors.blue.shade900 : Colors.black87;
        borderColor = Colors.transparent;
        borderWidth = 0;
        break;
      case ChipVariant.outlined:
        backgroundColor = selected ? Colors.blue.shade50 : Colors.transparent;
        textColor = selected ? Colors.blue.shade900 : Colors.black87;
        borderColor = selected ? Colors.blue : Colors.grey.shade400;
        borderWidth = 1.5;
        break;
      case ChipVariant.colored:
        backgroundColor = selected ? Colors.purple.shade400 : Colors.purple.shade100;
        textColor = selected ? Colors.white : Colors.purple.shade900;
        borderColor = Colors.transparent;
        borderWidth = 0;
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: onDeleted != null ? 8 : 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (onDeleted != null) ...[
            const SizedBox(width: 4),
            GestureDetector(
              onTap: onDeleted,
              child: Icon(
                Icons.close,
                size: 18,
                color: textColor,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
