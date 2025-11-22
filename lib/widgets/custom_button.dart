import 'package:flutter/material.dart';

enum ButtonVariant {
  primary,
  secondary,
  outlined,
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final double? width;
  final double height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = ButtonVariant.primary,
    this.width,
    this.height = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    Color borderColor;
    double borderWidth;
    double elevation;

    switch (variant) {
      case ButtonVariant.primary:
        backgroundColor = Colors.blue;
        textColor = Colors.white;
        borderColor = Colors.transparent;
        borderWidth = 0;
        elevation = 2;
        break;
      case ButtonVariant.secondary:
        backgroundColor = Colors.grey.shade300;
        textColor = Colors.black87;
        borderColor = Colors.transparent;
        borderWidth = 0;
        elevation = 1;
        break;
      case ButtonVariant.outlined:
        backgroundColor = Colors.transparent;
        textColor = Colors.blue;
        borderColor = Colors.blue;
        borderWidth = 2;
        elevation = 0;
        break;
    }

    return SizedBox(
      width: width,
      height: height,
      child: Material(
        color: backgroundColor,
        elevation: elevation,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor,
                width: borderWidth,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
