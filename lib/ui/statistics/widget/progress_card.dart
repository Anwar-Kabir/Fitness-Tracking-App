import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  final String title;
  final String remainingTime;
  final int currentStep;
  final int totalSteps;
  final double progress;

  const ProgressCard({
    Key? key,
    required this.title,
    required this.remainingTime,
    required this.currentStep,
    required this.totalSteps,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,  
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),  
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           

          Positioned(
            top: 10,
            right: 10,
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.grey),
                onPressed: () {
                   
                },
              ),
            ),
          ),

          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(
                  value: progress,
                  strokeWidth: 6,
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Color(0xFFFF7643)),
                  backgroundColor: const Color(0xFFF1F2F6),
                ),
              ),
              Text(
                "$currentStep/$totalSteps",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF7643),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          // Workout title
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2B2D42),
            ),
          ),
          const SizedBox(height: 4),
          // Remaining time
          Text(
            remainingTime,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}

class WorkoutProgress extends StatelessWidget {
  const WorkoutProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                ProgressCard(
                  title: "Chest Workout",
                  remainingTime: "15 min remaining",
                  currentStep: 5,
                  totalSteps: 12,
                  progress: 5 / 12,
                ),
                SizedBox(width: 16), 
                ProgressCard(
                  title: "Legs Workout",
                  remainingTime: "23 min remaining",
                  currentStep: 3,
                  totalSteps: 20,
                  progress: 3 / 20,
                ),
                SizedBox(width: 16),  
                ProgressCard(
                  title: "Legs Workout",
                  remainingTime: "23 min remaining",
                  currentStep: 3,
                  totalSteps: 20,
                  progress: 3 / 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
