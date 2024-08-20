import 'package:codesbreak_fitness/ui/home_page/widgets/daily_activities.dart';
import 'package:codesbreak_fitness/ui/home_page/widgets/goals.dart';
import 'package:codesbreak_fitness/ui/home_page/widgets/home_header.dart';
import 'package:codesbreak_fitness/ui/home_page/widgets/search.dart';
import 'package:codesbreak_fitness/ui/home_page/widgets/statistics.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(
                height: 16,
              ),
              SearchField(),
              SizedBox(
                height: 16,
              ),
               
              Statistics(),
              SizedBox(
                height: 30,
              ),
              DailyActivities(),
              SizedBox(
                height: 16,
              ),
              Goals(),
            ],
          ),
        ),
      ),
    );
  }
}
