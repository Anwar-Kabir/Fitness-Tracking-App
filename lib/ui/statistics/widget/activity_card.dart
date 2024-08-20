import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:flutter/material.dart';
import 'package:codesbreak_fitness/utls/icon.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const ActivityCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 81,
      child: Card(
        color: AppsColors.bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Image of the exercise
              Image.asset(
                imagePath,
                height: 32,
                width: 64,
              ),
              const SizedBox(width: 16),
              // Title and subtitle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2B2D42),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              // Arrow icon
              SizedBox(
                height: 18,
                width: 18,
                child: Image.asset(
                  AppIconPath.rightIconPath,
                  color: AppsColors.bottomActiveColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 600,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Activities",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppsColors.tileTextColor)),
            ActivityCard(
              title: 'Full Body Warm Up',
              subtitle: '20 Exercises • 22 Min',
              imagePath: AppIconPath.warmupIconPath,
            ),
            SizedBox(height: 8),
            ActivityCard(
              title: 'Strength Exercise',
              subtitle: '12 Exercises • 14 Min',
              imagePath: AppIconPath.strexeIconPath,
            ),
            SizedBox(height: 8),
            ActivityCard(
              title: 'Both Side Plank',
              subtitle: '15 Exercises • 18 Min',
              imagePath: AppIconPath.sideplankIconPath,
            ),
            SizedBox(height: 8),
            ActivityCard(
              title: 'Abs Workout',
              subtitle: '16 Exercises • 18 Min',
              imagePath: AppIconPath.absIconPath,
            ),
            SizedBox(height: 8),
            ActivityCard(
              title: 'Torso and Trap Workout',
              subtitle: '8 Exercises • 10 Min',
              imagePath: AppIconPath.torsoIconPath,
            ),
            SizedBox(height: 8),
            ActivityCard(
              title: 'Lower Back Exercise',
              subtitle: '14 Exercises • 18 Min',
              imagePath: AppIconPath.lowebackIconPath,
            ),
          ],
        ),
      ),
    );
  }
}
