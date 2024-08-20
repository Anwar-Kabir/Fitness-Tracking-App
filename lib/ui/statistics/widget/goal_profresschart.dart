import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GoalProgressChart extends StatelessWidget {
  const GoalProgressChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Goal Progress',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2B2D42),
                ),
              ),
              Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: AppsColors.activitybgColor, // Set your desired border color here
                    width: 1.0, // Adjust the border width if needed
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Weekly',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 8),
                    Image.asset(AppIconPath.dartarrowIconPath),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          AspectRatio(
            aspectRatio: 1.5,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 100,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 20,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          '${value.toInt()}%',
                          style: const TextStyle(
                            color: Color(0xFF2B2D42),
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        const style = TextStyle(
                          color: Color(0xFF2B2D42),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        );
                        switch (value.toInt()) {
                          case 0:
                            return const Text('Mon', style: style);
                          case 1:
                            return const Text('Tue', style: style);
                          case 2:
                            return const Text('Wed', style: style);
                          case 3:
                            return const Text('Thu', style: style);
                          case 4:
                            return const Text('Fri', style: style);
                          case 5:
                            return const Text('Sat', style: style);
                          case 6:
                            return const Text('Sun', style: style);
                          default:
                            return const Text('');
                        }
                      },
                      reservedSize: 32,
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: _buildBarGroups(),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: Colors.grey[500],
                      strokeWidth: 1,
                      dashArray: [5, 5], // This creates a dotted line pattern
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegend('Workout', Colors.cyan),
              _buildLegend('Calories', Colors.orange),
              _buildLegend('Steps', Colors.purple),
            ],
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups() {
    return [
      _makeGroupData(0, 60, 80, 70),
      _makeGroupData(1, 70, 60, 90),
      _makeGroupData(2, 80, 85, 100),
      _makeGroupData(3, 65, 75, 85),
      _makeGroupData(0, 60, 70, 80),
      _makeGroupData(5, 75, 65, 70),
      _makeGroupData(6, 80, 90, 85),
    ];
  }

  BarChartGroupData _makeGroupData(
      int x, double workout, double calories, double steps) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: workout,
          color: Colors.cyan,
          width: 5,
        ),
        BarChartRodData(
          fromY: 0,
          toY: calories,
          color: Colors.orange,
          width: 5,
        ),
        BarChartRodData(
          fromY: 0,
          toY: steps,
          color: Colors.purple,
          width: 5,
        ),
      ],
      showingTooltipIndicators: [],
    );
  }

  Widget _buildLegend(String label, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            color: color,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(color: Color(0xFF2B2D42)),
          ),
        ],
      ),
    );
  }
}
