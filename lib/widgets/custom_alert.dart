import 'package:flutter/material.dart';

enum AlertVariant {
  info,
  success,
  warning,
  error,
}

class CustomAlert extends StatelessWidget {
  final String message;
  final AlertVariant variant;
  final IconData? icon;
  final VoidCallback? onClose;

  const CustomAlert({
    super.key,
    required this.message,
    this.variant = AlertVariant.info,
    this.icon,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    Color iconColor;
    IconData defaultIcon;

    switch (variant) {
      case AlertVariant.info:
        backgroundColor = Colors.blue.shade50;
        textColor = Colors.blue.shade900;
        iconColor = Colors.blue.shade700;
        defaultIcon = Icons.info_outline;
        break;
      case AlertVariant.success:
        backgroundColor = Colors.green.shade50;
        textColor = Colors.green.shade900;
        iconColor = Colors.green.shade700;
        defaultIcon = Icons.check_circle_outline;
        break;
      case AlertVariant.warning:
        backgroundColor = Colors.orange.shade50;
        textColor = Colors.orange.shade900;
        iconColor = Colors.orange.shade700;
        defaultIcon = Icons.warning_amber_outlined;
        break;
      case AlertVariant.error:
        backgroundColor = Colors.red.shade50;
        textColor = Colors.red.shade900;
        iconColor = Colors.red.shade700;
        defaultIcon = Icons.error_outline;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: iconColor.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon ?? defaultIcon,
            color: iconColor,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (onClose != null) ...[
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onClose,
              child: Icon(
                Icons.close,
                color: iconColor,
                size: 20,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
