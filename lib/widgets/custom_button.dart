import 'package:flutter/material.dart';

enum ButtonVariant {
  primary,
  secondary,
  outlined,
}

class CustomButton extends StatefulWidget {
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
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    _controller.reverse();
    if (widget.onPressed != null) {
      widget.onPressed!();
    }
  }

  void _handleTapCancel() {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    Color borderColor;
    double borderWidth;
    double elevation;

    switch (widget.variant) {
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

    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: Material(
              color: backgroundColor,
              elevation: elevation,
              borderRadius: BorderRadius.circular(8),
              child: GestureDetector(
                onTapDown: _handleTapDown,
                onTapUp: _handleTapUp,
                onTapCancel: _handleTapCancel,
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
                    widget.text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
