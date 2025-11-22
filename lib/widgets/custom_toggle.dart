import 'package:flutter/material.dart';

enum ToggleVariant {
  standard,
  ios,
  custom,
}

class CustomToggle extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final ToggleVariant variant;
  final Color? activeColor;

  const CustomToggle({
    super.key,
    required this.value,
    required this.onChanged,
    this.variant = ToggleVariant.standard,
    this.activeColor,
  });

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    if (widget.value) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(CustomToggle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      if (widget.value) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.variant) {
      case ToggleVariant.standard:
        return Switch(
          value: widget.value,
          onChanged: widget.onChanged,
          activeTrackColor: widget.activeColor ?? Theme.of(context).colorScheme.primary,
        );
      case ToggleVariant.ios:
        return Switch.adaptive(
          value: widget.value,
          onChanged: widget.onChanged,
          activeTrackColor: widget.activeColor ?? Theme.of(context).colorScheme.primary,
        );
      case ToggleVariant.custom:
        return GestureDetector(
          onTap: widget.onChanged != null ? () => widget.onChanged!(!widget.value) : null,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Container(
                width: 50,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color.lerp(
                    Colors.grey.shade300,
                    widget.activeColor ?? Theme.of(context).colorScheme.primary,
                    _animation.value,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: _animation.value * 22,
                      top: 2,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
    }
  }
}
