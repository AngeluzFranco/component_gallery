import 'package:flutter/material.dart';

enum InputVariant {
  standard,
  outlined,
  filled,
}

class CustomInput extends StatelessWidget {
  final String hintText;
  final InputVariant variant;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomInput({
    super.key,
    required this.hintText,
    this.variant = InputVariant.standard,
    this.prefixIcon,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    InputBorder? border;
    InputBorder? focusedBorder;
    Color? fillColor;
    bool filled;

    switch (variant) {
      case InputVariant.standard:
        border = const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1),
        );
        focusedBorder = const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
        );
        fillColor = null;
        filled = false;
        break;
      case InputVariant.outlined:
        border = OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey, width: 1.5),
        );
        focusedBorder = OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        );
        fillColor = null;
        filled = false;
        break;
      case InputVariant.filled:
        border = OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        );
        focusedBorder = OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        );
        fillColor = Colors.grey.shade100;
        filled = true;
        break;
    }

    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: border,
        enabledBorder: border,
        focusedBorder: focusedBorder,
        fillColor: fillColor,
        filled: filled,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
    );
  }
}
