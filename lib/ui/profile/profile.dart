import 'package:codesbreak_fitness/ui/activity/widgets/head.dart';
import 'package:codesbreak_fitness/ui/profile/widget/goal_settings.dart';
import 'package:codesbreak_fitness/ui/profile/widget/others.dart';
import 'package:codesbreak_fitness/ui/profile/widget/sleep.dart';
import 'package:codesbreak_fitness/ui/profile/widget/this_week_progress.dart';
import 'package:codesbreak_fitness/ui/profile/widget/user_profile.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Head(
                text: "Profile",
                leftIconPath: AppIconPath.activityChevronleftIconPath,
              ),
              const SizedBox(
                height: 12,
              ),
              const UserProfile(),
              const SizedBox(height: 12,),
              ProgressChart(),
              const SizedBox(
                height: 12,
              ),
              //WeeklyProgressChart(),
              const GoalSetting(),
          
              const SizedBox(
                height: 12,
              ),
          
              const Sleep(),
          
              const SizedBox(
                height: 12,
              ),
          
              const OthersMenu()
            ],
          ),
        ),
      ),
    );
  }
}
