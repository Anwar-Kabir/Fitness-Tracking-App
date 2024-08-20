import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppsColors.botomBackgroundColor,
      height: 360,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          //: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Your Statistics",
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
                        fontWeight: FontWeight.w300,
                        color: AppsColors.bottomActiveColor),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppsColors.broderColor, width: 2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        child: RichText(
                          text: TextSpan(children: [
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(
                                    bottom:
                                        1.0), // Adjust the bottom margin as needed
                                child: const Text(
                                  "In-Progress  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: AppsColors.inProgressColor,
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: "56%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: AppsColors.tileTextColor),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 42,
                        width: 42,
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                                AppIconPath.bottomRightArrowIconPath)),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: 0.56,
                        backgroundColor: AppsColors.linearProgressColor,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            AppsColors.linearActiveProgressColor),
                        //minHeight: 2,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 1.0),
                            child: const Text(
                              "You've burned  ",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: AppsColors.inProgressColor,
                              ),
                            ),
                          ),
                        ),
                        WidgetSpan(
                          child: Image.asset(
                            AppIconPath.bottomFlamIconPath,
                            height: 20,
                            width: 20,
                          ),
                        ),
                        const TextSpan(
                          text: " 1,116.5 ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppsColors.tileTextColor),
                        ),
                        WidgetSpan(
                          child: Container(
                            margin: const EdgeInsets.only(
                                bottom:
                                    1.0), // Adjust the bottom margin as needed
                            child: const Text(
                              "out of 2,000 cal. ",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: AppsColors.inProgressColor,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Column(
                  children: [
                    //step ====>
                    Container(
                      height: 68,
                      width: 180,
                      decoration: BoxDecoration(
                          color: AppsColors.fillColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 5),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 16,
                                  width: 16,
                                  child: Image.asset(
                                      AppIconPath.bottomStepsIconPath),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  "Steps",
                                  style: TextStyle(
                                      color: AppsColors.inProgressColor),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "19,124",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppsColors.tileTextColor),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: LinearProgressIndicator(
                              value: 0.75,
                              backgroundColor:
                                  AppsColors.greenLinearColor.withOpacity(0.4),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  AppsColors.greenLinearColor),
                              minHeight: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    //sleep====>
                    Container(
                      height: 68,
                      width: 180,
                      decoration: BoxDecoration(
                          color: AppsColors.fillColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 5),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 16,
                                  width: 16,
                                  child: Image.asset(
                                      AppIconPath.bottomSleepIconPath),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  "Sleep",
                                  style: TextStyle(
                                      color: AppsColors.inProgressColor),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text: '7',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppsColors.tileTextColor),
                                  ),
                                  TextSpan(
                                    text: 'h',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppsColors.tileTextColor),
                                  ),
                                  TextSpan(
                                    text: ' 34',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppsColors.tileTextColor),
                                  ),
                                  TextSpan(
                                    text: 'm',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppsColors.tileTextColor),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: LinearProgressIndicator(
                              value: 0.75,
                              backgroundColor:
                                  AppsColors.pinkLinearColor.withOpacity(0.4),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  AppsColors.pinkLinearColor),
                              minHeight: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 14,
                ),
                //heart rate
                Container(
                    height: 150,
                    width: 180,
                    decoration: BoxDecoration(
                        color: AppsColors.fillColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 5),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 16,
                                width: 16,
                                child: Image.asset(
                                    AppIconPath.bottomHeartIconPath),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Heart rate",
                                style: TextStyle(
                                    color: AppsColors.inProgressColor),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                  text: '88',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppsColors.tileTextColor),
                                ),
                                TextSpan(
                                  text: ' bpm',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppsColors.tileTextColor),
                                ),
                              ]),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 93,
                          child: LineChart(
                            LineChartData(
                              gridData: const FlGridData(show: false),
                              titlesData: const FlTitlesData(show: false),
                              borderData: FlBorderData(show: false),
                              minX: 0,
                              maxX: 6,
                              minY: 0,
                              maxY: 2,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    const FlSpot(0, 1),
                                    const FlSpot(1, 0.5),
                                    const FlSpot(2, 1.5),
                                    const FlSpot(3, 0.5),
                                    const FlSpot(4, 1.8),
                                    const FlSpot(5, 0.7),
                                    const FlSpot(6, 1),
                                  ],
                                  isCurved: true,
                                  color:
                                      AppsColors.wavechartColor, // Line color
                                  barWidth: 1,
                                  dotData: const FlDotData(show: false),
                                  belowBarData: BarAreaData(
                                    show: true,
                                    gradient: LinearGradient(
                                      colors: [
                                        AppsColors.wavechartColor
                                            .withOpacity(0.4),
                                        AppsColors.wavechartColor
                                            .withOpacity(0.1)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
