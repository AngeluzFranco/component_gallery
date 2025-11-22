import 'package:flutter/material.dart';

enum ProgressVariant {
  linear,
  circular,
  custom,
}

class CustomProgress extends StatelessWidget {
  final double? value;
  final ProgressVariant variant;
  final Color? color;
  final Color? backgroundColor;

  const CustomProgress({
    super.key,
    this.value,
    this.variant = ProgressVariant.linear,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final progressColor = color ?? Colors.blue;
    final bgColor = backgroundColor ?? Colors.grey.shade200;

    switch (variant) {
      case ProgressVariant.linear:
        return SizedBox(
          height: 8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: bgColor,
              valueColor: AlwaysStoppedAnimation<Color>(progressColor),
            ),
          ),
        );
      case ProgressVariant.circular:
        return SizedBox(
          width: 40,
          height: 40,
          child: CircularProgressIndicator(
            value: value,
            backgroundColor: bgColor,
            valueColor: AlwaysStoppedAnimation<Color>(progressColor),
            strokeWidth: 4,
          ),
        );
      case ProgressVariant.custom:
        return Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: CircularProgressIndicator(
                  value: value,
                  backgroundColor: Colors.transparent,
                  valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                  strokeWidth: 8,
                ),
              ),
              if (value != null)
                Text(
                  '${(value! * 100).toInt()}%',
                  style: TextStyle(
                    color: progressColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        );
    }
  }
}
