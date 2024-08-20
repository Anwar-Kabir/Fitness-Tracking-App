import 'package:codesbreak_fitness/ui/activity/widgets/activity_step.dart';
import 'package:codesbreak_fitness/ui/activity/widgets/custom_bar_chart.dart';
import 'package:codesbreak_fitness/ui/activity/widgets/distance.dart';
import 'package:codesbreak_fitness/ui/activity/widgets/textwithicon.dart';
import 'package:codesbreak_fitness/ui/activity/widgets/time.dart';
import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';

class Burned extends StatelessWidget {
  const Burned({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: AppsColors.botomBackgroundColor,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "You've burned",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppsColors.inProgressColor),
              ),
              RichText(
                text: TextSpan(children: [
                  WidgetSpan(
                    child: SizedBox(
                        height: 32,
                        width: 32,
                        child: Image.asset(AppIconPath.bottomFlamIconPath)),
                  ),
                  WidgetSpan(
                      child: Container(
                    // margin: const EdgeInsets.only(top: 5),
                    child: const Text(
                      "1,116.5",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppsColors.inProgressColor),
                    ),
                  )),
                  WidgetSpan(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      child: const Text(
                        " cal",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppsColors.inProgressColor),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Column(children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Container(
                        height: 200,
                        //color: Colors.black12,
                        child: const Column(
                          children: [
                            LeftTextWithIcon(
                              text: "Jogging",
                              iconPath: AppIconPath.bottomJoggingIconPath,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            LeftTextWithIcon(
                              text: "Cycling",
                              iconPath: AppIconPath.cyclingIconPath,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            LeftTextWithIcon(
                              text: "Yoya",
                              iconPath: AppIconPath.yogaIconPath,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            LeftTextWithIcon(
                              text: "Others",
                              iconPath: null,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: AppsColors.inProgressColor,
                    thickness: 1,
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 200,
                        child: const Column(
                          children: [CustomBarChart()],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Distance(),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                ActivityStep(),
                SizedBox(
                  width: 1,
                ),
                Time(),
              ],
            ),
          ]),
        )
      ]),
    );
  }
}
