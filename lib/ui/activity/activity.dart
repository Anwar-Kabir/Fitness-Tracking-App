import 'package:codesbreak_fitness/ui/activity/widgets/head.dart';
import 'package:codesbreak_fitness/ui/activity/widgets/activities.dart';
import 'package:codesbreak_fitness/ui/activity/widgets/burned.dart';
import 'package:codesbreak_fitness/ui/activity/widgets/today_your_activity.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Head(
                text: "Daily Activity",
                leftIconPath: AppIconPath.activityChevronleftIconPath,
                rightIconPath: AppIconPath.bottomBellIconIconPath,
              ),
              const SizedBox(
                height: 16,
              ),
              const TodayYourActivity(),
              const SizedBox(
                height: 16,
              ),
              const Burned(),

              const SizedBox(
                height: 16,
              ),
              //Activities()
              Activities(
                title: "Activities",
                time: "Today, 08:10 AM",
                calories: "238.2",
                distanceCovered: "2.32",
                totalDistance: "5.00",
                activityType: "Jogging",
                joggingIconPath: AppIconPath.bottomJoggingIconPath,
                flameIconPath: AppIconPath.bottomFlamIconPath,
                pauseIconPath: AppIconPath.bottomPauseIconPath,
                onPausePressed: () {},
              ),
               
              Activities(
                time: "Today, 08:10 AM",
                calories: "563.4",
                distanceCovered: "10.00",
                totalDistance: "10.0     0",
                activityType: "Jogging",
                joggingIconPath: AppIconPath.cyclingIconPath,
                flameIconPath: AppIconPath.bottomFlamIconPath,
                pauseIconPath: AppIconPath.doneIconPath,
                onPausePressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
