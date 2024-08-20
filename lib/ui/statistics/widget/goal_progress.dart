 
import 'package:codesbreak_fitness/ui/statistics/widget/activity_card.dart';
import 'package:codesbreak_fitness/ui/statistics/widget/progress_card.dart';
import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:flutter/material.dart';

class GoalProgress extends StatelessWidget {
  const GoalProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 860,
      color: AppsColors.botomBackgroundColor,
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Progress",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppsColors.tileTextColor),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppsColors.bottomActiveColor),
                  ),
                )
              ],
            ),
          ),
          WorkoutProgress(),

          SizedBox(height: 10,),

          ActivitiesPage(),
        ],
      ),
    );
  }
}
