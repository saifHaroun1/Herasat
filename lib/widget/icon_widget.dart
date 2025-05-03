import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconCircle extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Color borderColor;
  final Color iconColor;
  final Color backgroundColor;

  const SocialIconCircle({
    Key? key,
    required this.iconData,
    this.size = 40.0,
    this.borderColor = Colors.grey,
    this.iconColor = Colors.white,
    this.backgroundColor = const Color(0xFF5C5F66),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Center(
        child: Icon(
          iconData,
          color: iconColor,
          size: size * 0.4,
        ),
      ),
    );
  }
}
