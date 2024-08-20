
import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DailyActivities extends StatefulWidget {
  const DailyActivities({super.key});

  @override
  _DailyActivitiesState createState() => _DailyActivitiesState();
}

class _DailyActivitiesState extends State<DailyActivities> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: Container(
        color: AppsColors.botomBackgroundColor,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8),
                  child: Text(
                    "Daily Activities",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1D1E2C),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0, top: 8),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFF754C),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            SizedBox(
              height: 136,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3, // Assuming you have 3 items to show
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppsColors.fillColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 12,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Today, 08:10 AM • ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF888DA7),
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(
                                      height: 14,
                                      width: 14,
                                      child: Image.asset(
                                        AppIconPath.bottomFlamIconPath,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ${index == 0 ? '238.2' : '563.4'} ",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1D1E2C),
                                    ),
                                  ),
                                  const TextSpan(
                                    text: " cal ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF888DA7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                ),
                                child: SizedBox(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    index == 0
                                        ? AppIconPath.bottomJoggingIconPath
                                        : AppIconPath.cyclingIconPath,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: index == 0 ? "2.32/" : "10.00/",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1D1E2C),
                                            fontSize: 20,
                                          ),
                                        ),
                                        const TextSpan(
                                          text: "5.00 miles",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF888DA7),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    index == 0 ? "Jogging" : "Cycling",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF888DA7),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                height: 25,
                                width: 25,
                                child: Image.asset(
                                  index == 0
                                      ? AppIconPath.bottomPauseIconPath
                                      : AppIconPath.bottomHeartIconPath,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,  
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                spacing: 8,
                dotColor: Colors.grey,
                activeDotColor: Color(0xFFFF754C),
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
