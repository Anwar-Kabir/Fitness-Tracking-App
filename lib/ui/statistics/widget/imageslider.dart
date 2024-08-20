import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Imageslider extends StatelessWidget {
  const Imageslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193,
      decoration: const BoxDecoration(color: AppsColors.botomBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Container(
          height: 161,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppsColors.grleftColor,
                  AppsColors.grrightColor,
                ]),
          ),
          child: Stack(
            children: [
              const Positioned(
                left: 18,
                top: 8,
                child: Text(
                  "Start Strong and",
                  style: TextStyle(
                      fontSize: 20, color: AppsColors.botomBackgroundColor),
                ),
              ),
              const Positioned(
                left: 18,
                top: 30,
                child: Text(
                  "Set Your Fitness",
                  style: TextStyle(
                      fontSize: 20, color: AppsColors.botomBackgroundColor),
                ),
              ),
              const Positioned(
                left: 18,
                top: 51,
                child: Text(
                  "Goals",
                  style: TextStyle(
                      fontSize: 20, color: AppsColors.botomBackgroundColor),
                ),
              ),
              Positioned(
                left: 18,
                top: 95,
                child: Container(
                  height: 41,
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppsColors.botomBackgroundColor),
                  child: const Center(
                    child: Text(
                      "Set Your Goal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppsColors.bottomActiveColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                  right: 1,
                  bottom: 0,
                  child: SizedBox(
                      height: 135,
                      width: 126,
                      child: Image.asset(AppIconPath.goalIconPath)))
            ],
          ),
        ),
      ),
    );
  }
}
