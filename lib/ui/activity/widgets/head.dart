import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  final String text;
  final String? leftIconPath;
  final String? rightIconPath;
  final VoidCallback? onLeftIconPressed;
  final VoidCallback? onRightIconPressed;

  const Head({
    super.key,
    required this.text,
    this.leftIconPath,
    this.rightIconPath,
    this.onLeftIconPressed,
    this.onRightIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: AppsColors.botomBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                if (leftIconPath != null)
                  IconButton(
                    onPressed: onLeftIconPressed,
                    icon: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset(leftIconPath!)),
                  ),
                const SizedBox(width: 20),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppsColors.tileTextColor),
                ),
              ],
            ),
          ),
          if (rightIconPath != null)
            IconButton(
                onPressed: () {},
                icon: SizedBox(
                    height: 24, width: 24, child: Image.asset(rightIconPath!)))
        ],
      ),
    );
  }
}
