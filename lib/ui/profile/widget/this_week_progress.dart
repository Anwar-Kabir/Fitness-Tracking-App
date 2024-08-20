 


import 'package:flutter/material.dart';

class ProgressChart extends StatelessWidget {
  final int steps = 67525;
  final double calories = 6730.5;
  final double miles = 50.2;
  final int goalsCompleted = 3;
  final int totalGoals = 7;

  final List<int> stepsPerDay = [1200, 1800, 1900, 800, 400, 2000, 0];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "This Week's progress",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStat(' Steps', steps.toString(), Icons.directions_walk,
                    Colors.green),
                _buildStat(' Cal', '${calories.toStringAsFixed(1)} cal',
                    Icons.whatshot, Colors.red),
                _buildStat(
                    ' Mi', miles.toString(), Icons.location_on, Colors.grey),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  YAxisLabels(),
                  const SizedBox(width: 10),
                  Expanded(child: BarChart(stepsPerDay: stepsPerDay)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: 'You’ve completed ',
                style: const TextStyle(fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: '$goalsCompleted',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(text: ' out of $totalGoals daily goals.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String label, String value, IconData icon, Color color) {
    return Row(
      children: [
        Icon(icon, size: 28, color: color),
        const SizedBox(width: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}

class YAxisLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text('2k', style: TextStyle(fontSize: 14, color: Colors.grey)),
        Container(
          height: 1,
          width: 40,
          margin: const EdgeInsets.only(right: 5),
          color: Colors.grey,
          child: LayoutBuilder(
            builder: (context, constraints) => Row(
              children: List.generate(
                  (constraints.maxWidth / 6).floor(),
                  (index) => Container(
                      width: 3,
                      height: 1,
                      color: index.isOdd ? Colors.transparent : Colors.grey)),
            ),
          ),
        ),
        const Spacer(),
        const Text('0', style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}

class BarChart extends StatelessWidget {
  final List<int> stepsPerDay;

  BarChart({required this.stepsPerDay});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(stepsPerDay.length, (index) {
        double barHeight = stepsPerDay[index] / 10.0;
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 20,
              height: barHeight,
              color: index == 1 || index == 2 || index == 5
                  ? Colors.black
                  : Colors.grey,
            ),
            const SizedBox(height: 8),
            _buildDayLabel(index),
          ],
        );
      }),
    );
  }

  Widget _buildDayLabel(int index) {
    bool isSelected = index == 1 || index == 2 || index == 5;
    String dayLabel = _dayLabel(index);
    return Row(
      children: [
        if (isSelected)
          const Icon(
            Icons.check_circle,
            size: 16,
            color: Colors.black,
          ),
        Text(
          dayLabel,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
        
      ],
    );
  }

  String _dayLabel(int index) {
    switch (index) {
      case 0:
        return 'S';
      case 1:
        return 'M';
      case 2:
        return 'T';
      case 3:
        return 'W';
      case 4:
        return 'T';
      case 5:
        return 'F';
      case 6:
        return 'S';
      default:
        return '';
    }
  }
}

void main() => runApp(MaterialApp(home: ProgressChart()));

