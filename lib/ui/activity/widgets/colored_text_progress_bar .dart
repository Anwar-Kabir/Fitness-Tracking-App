import 'package:flutter/material.dart';

class ColoredTextProgressBar extends StatelessWidget {
  final double value;
  final Color progressColor;
  final Color backgroundColor;
  final String labelText;
  final Color labelColor;
  final double minHeight;

  const ColoredTextProgressBar({
    super.key,
    required this.value,
    required this.progressColor,
    required this.backgroundColor,
    required this.labelText,
    required this.labelColor,
    this.minHeight = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 80,
          child: Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: value,
                backgroundColor: backgroundColor.withOpacity(0.4),
                valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                minHeight: minHeight,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: labelColor,
          ),
        ),
      ],
    );
  }
}
