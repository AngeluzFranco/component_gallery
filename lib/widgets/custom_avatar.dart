import 'package:flutter/material.dart';

enum AvatarVariant {
  circular,
  rounded,
  square,
}

class CustomAvatar extends StatelessWidget {
  final String? imageUrl;
  final String? initials;
  final AvatarVariant variant;
  final double size;
  final Color? backgroundColor;

  const CustomAvatar({
    super.key,
    this.imageUrl,
    this.initials,
    this.variant = AvatarVariant.circular,
    this.size = 60.0,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadius? borderRadius;

    switch (variant) {
      case AvatarVariant.circular:
        borderRadius = BorderRadius.circular(size / 2);
        break;
      case AvatarVariant.rounded:
        borderRadius = BorderRadius.circular(12);
        break;
      case AvatarVariant.square:
        borderRadius = BorderRadius.zero;
        break;
    }

    final Color bgColor = backgroundColor ?? Colors.blue.shade400;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: borderRadius,
        image: imageUrl != null
            ? DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: imageUrl == null
          ? Center(
              child: Text(
                initials ?? '?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size * 0.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }
}
