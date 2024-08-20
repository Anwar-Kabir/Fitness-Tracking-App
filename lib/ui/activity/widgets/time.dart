import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Time extends StatelessWidget {
  const Time({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          height: 68,
          width: 170,
          decoration: BoxDecoration(
              color: AppsColors.fillColor,
              borderRadius: BorderRadius.circular(4)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
              child: Row(
                children: [
                  SizedBox(
                    height: 16,
                    width: 16,
                    child: Image.asset(AppIconPath.timeIconPath),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Time",
                    style: TextStyle(color: AppsColors.inProgressColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: RichText(
                  text: const TextSpan(children: [
                     TextSpan(
                        text: "2",
                        style: TextStyle(color: AppsColors.tileTextColor, 
                        fontWeight: FontWeight.bold, fontSize: 20)),
                    TextSpan(
                        text: "h",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppsColors.inProgressColor,
                            )),
                    TextSpan(
                        text: " 14",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppsColors.tileTextColor, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "m ",
                        style: TextStyle(color: AppsColors.inProgressColor))
                  ]),
                )),
          ]),
        ),
      ),
    );
  }
}
