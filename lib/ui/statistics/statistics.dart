import 'package:codesbreak_fitness/ui/activity/widgets/head.dart';
import 'package:codesbreak_fitness/ui/statistics/widget/goal_profresschart.dart';

import 'package:codesbreak_fitness/ui/statistics/widget/goal_progress.dart';
import 'package:codesbreak_fitness/ui/statistics/widget/imageslider.dart';
import 'package:codesbreak_fitness/ui/statistics/widget/progress_card.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/cupertino.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Head(
                text: "Goal",
                leftIconPath: AppIconPath.activityChevronleftIconPath,
              ),
              SizedBox(
                height: 12,
              ),
              Imageslider(),
              SizedBox(
                height: 12,
              ),
              GoalProgress(),
              SizedBox(
                height: 12,
              ),
              GoalProgressChart(),
            ],
          ),
        ),
      ),
    );
  }
}
