import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:flutter/material.dart';

class LeftTextWithIcon extends StatelessWidget {
  final String text;
  final String ? iconPath;

  const LeftTextWithIcon({
    Key? key,
    required this.text,
      this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: AppsColors.inProgressColor,
            ),
          ),
        ),
        const SizedBox(width: 8), // Space between text and icon
        if (iconPath != null)
          Image.asset(
            iconPath!,
            width: 40,
            height: 40,
          ),
      ],
    );
  }
}
