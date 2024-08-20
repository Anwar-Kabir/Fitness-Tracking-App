 

import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';

class Sleep extends StatelessWidget {
  const Sleep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppsColors.botomBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your cycle",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            _buildGoalRow(
              icon:
                  Image.asset(AppIconPath.sleepIconPath, width: 24, height: 24),
              iconColor: Colors.red,
              goalTitle: "Bed time",
              goalValue: "10.00",
              goalUnit: "PM",
              subText: "Daily",
            ),
            const SizedBox(height: 20),
            _buildGoalRow(
              icon: Image.asset(AppIconPath.wakeupIconPath,
                  width: 24, height: 24),
              iconColor: Colors.green,
              goalTitle: "Wake-up time",
              goalValue: "6.00",
              goalUnit: "AM",
              subText: "5 days",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGoalRow({
    required Widget icon,
    required Color iconColor,
    required String goalTitle,
    required String goalValue,
    required String subText,
    required String goalUnit,
  }) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: iconColor.withOpacity(0.1),
          child: icon,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            goalTitle,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: goalValue,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const TextSpan(
                    text: "  ",
                  ),
                  TextSpan(
                    text: goalUnit,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 3.0),
              child: Text(
                subText,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
