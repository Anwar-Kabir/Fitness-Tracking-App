import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:flutter/material.dart';

class TodayYourActivity extends StatefulWidget {
  const TodayYourActivity({super.key});

  @override
  State<TodayYourActivity> createState() => _TodayYourActivityState();
}

class _TodayYourActivityState extends State<TodayYourActivity> {
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController =
      ScrollController(); //Scroll Controller for ListView

  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ]; //List Of Months

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: double.infinity,
      color: AppsColors.botomBackgroundColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
          child: Text(
            "Today your activities",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppsColors.tileTextColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
          child: SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 10);
              },
              itemCount: 365,
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentDateSelectedIndex = index;
                      selectedDate = DateTime.now().add(Duration(days: index));
                    });
                  },
                  child: Container(
                    height: 59,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: currentDateSelectedIndex == index
                            ? Colors.orange
                            : Colors.grey.withOpacity(0.5),
                        width: 2.0,
                      ),
                      // boxShadow: const [
                      //   BoxShadow(
                      //     color: Colors.grey,
                      //     offset: Offset(3, 3),
                      //     blurRadius: 5,
                      //   ),
                      // ],
                      color: currentDateSelectedIndex == index
                          ? AppsColors.bottomActiveColor
                          : AppsColors.botomBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listOfDays[DateTime.now()
                                      .add(Duration(days: index))
                                      .weekday -
                                  1]
                              .toString(),
                          style: TextStyle(
                            fontSize: 16,
                            color: currentDateSelectedIndex == index
                                ? Colors.white
                                : AppsColors.bottomActiveColor,
                          ),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          DateTime.now()
                              .add(Duration(days: index))
                              .day
                              .toString(),
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: currentDateSelectedIndex == index
                                ? Colors.white
                                : AppsColors.bottomActiveColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
