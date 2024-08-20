import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActivityStep extends StatelessWidget {
  const ActivityStep({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          height: 68,
          width: 172,
          decoration: BoxDecoration(
              color: AppsColors.fillColor,
              borderRadius: BorderRadius.circular(4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
              child: Row(
                children: [
                  SizedBox(
                    height: 16,
                    width: 16,
                    child: Image.asset(AppIconPath.bottomStepsIconPath),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Steps",
                    style: TextStyle(color: AppsColors.inProgressColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("19,124 ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppsColors.tileTextColor,
                      fontSize: 20)),
            ),
          ]),
        ),
      ),
    );
  }
}
