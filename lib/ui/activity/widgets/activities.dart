import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  final String ? title;
  final String time;
  final String calories;
  final String distanceCovered;
  final String totalDistance;
  final String activityType;
  final String joggingIconPath;
  final String flameIconPath;
  final String pauseIconPath;
  final VoidCallback onPausePressed;

  const Activities({
    super.key,
      this.title,
    required this.time,
    required this.calories,
    required this.distanceCovered,
    required this.totalDistance,
    required this.activityType,
    required this.joggingIconPath,
    required this.flameIconPath,
    required this.pauseIconPath,
    required this.onPausePressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 160,
        width: double.infinity,
        color: AppsColors.fillColor,
        // color: Colors.red,
         
        
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 if (title != null)
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppsColors.tileTextColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                 color: AppsColors.activitybgColor,
                 //color: Colors.amber
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$time • ",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppsColors.linearProgressColor,
                              ),
                            ),
                            WidgetSpan(
                              child: SizedBox(
                                height: 14,
                                width: 14,
                                child: Image.asset(flameIconPath),
                              ),
                            ),
                            TextSpan(
                              text: " $calories cal",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppsColors.tileTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: SizedBox(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(joggingIconPath),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "$distanceCovered/",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppsColors.tileTextColor,
                                            fontSize: 20,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "$totalDistance miles",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: AppsColors.inProgressColor,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    activityType,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppsColors.inProgressColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: onPausePressed,
                            icon: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(pauseIconPath),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

