import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Distance extends StatelessWidget {
  const Distance({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          height: 68,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppsColors.fillColor,
              borderRadius: BorderRadius.circular(4)),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: Row(
                  children: [
                    SizedBox(
                      height: 16,
                      width: 16,
                      child: Image.asset(AppIconPath.distanceIconPath),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Distance",
                      style: TextStyle(color: AppsColors.inProgressColor),
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
                            text: "You have covered ",
                            style: TextStyle(color: AppsColors.inProgressColor)),
                        TextSpan(
                            text: "14.8 ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppsColors.inProgressColor, fontSize: 20)),
                        TextSpan(
                            text: "mi ",
                            style: TextStyle(color: AppsColors.inProgressColor))
                      ]),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
