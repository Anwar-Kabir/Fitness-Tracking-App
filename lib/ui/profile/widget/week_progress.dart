// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class WeeklyProgressChart extends StatelessWidget {
//   const WeeklyProgressChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         const Padding(
//           padding: EdgeInsets.symmetric(vertical: 20.0),
//           child: Text(
//             "This Week's progress",
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             _buildIconText(
//               Icons.directions_walk,
//               '67,525 steps',
//               Colors.green,
//               Colors.black,
//             ),
//             _buildIconText(
//               Icons.local_fire_department,
//               '6,730.5 cal',
//               Colors.red,
//               Colors.black,
//             ),
//             _buildIconText(
//               Icons.location_on,
//               '50.2 mi',
//               Colors.grey,
//               Colors.black,
//             ),
//           ],
//         ),
//         const SizedBox(height: 20),
//         BarChart(
//           BarChartData(
//             alignment: BarChartAlignment.spaceAround,
//             barGroups: [
//               BarChartGroupData(x: 0, barRods: [
//                 BarChartRodData(fromY: 0, toY: 5, color: Colors.black26)
//               ]),
//               BarChartGroupData(x: 1, barRods: [
//                 BarChartRodData(fromY: 0, toY: 10, color: Colors.black54)
//               ]),
//               BarChartGroupData(x: 2, barRods: [
//                 BarChartRodData(fromY: 0, toY: 10, color: Colors.black54)
//               ]),
//               BarChartGroupData(x: 3, barRods: [
//                 BarChartRodData(fromY: 0, toY: 8, color: Colors.black26)
//               ]),
//               BarChartGroupData(x: 4, barRods: [
//                 BarChartRodData(fromY: 0, toY: 3, color: Colors.black26)
//               ]),
//               BarChartGroupData(x: 5, barRods: [
//                 BarChartRodData(fromY: 0, toY: 15, color: Colors.black)
//               ]),
//               BarChartGroupData(x: 6, barRods: [
//                 BarChartRodData(fromY: 0, toY: 0, color: Colors.black12)
//               ]),
//             ],
//             titlesData: FlTitlesData(
//               leftTitles: const AxisTitles(
//                 sideTitles: SideTitles(showTitles: true, interval: 10),
//               ),
//               bottomTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   showTitles: true,
//                   getTitlesWidget: (value, meta) {
//                     const style = TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     );
//                     switch (value.toInt()) {
//                       case 0:
//                         return const Text('S', style: style);
//                       case 1:
//                         return const Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(Icons.check_circle,
//                                 size: 16, color: Colors.black),
//                             Text('M', style: style),
//                           ],
//                         );
//                       case 2:
//                         return const Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(Icons.check_circle,
//                                 size: 16, color: Colors.black),
//                             Text('T', style: style),
//                           ],
//                         );
//                       case 3:
//                         return const Text('W', style: style);
//                       case 4:
//                         return const Text('T', style: style);
//                       case 5:
//                         return const Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(Icons.check_circle,
//                                 size: 16, color: Colors.black),
//                             Text('F', style: style),
//                           ],
//                         );
//                       case 6:
//                         return const Text('S', style: style);
//                       default:
//                         return const Text('');
//                     }
//                   },
//                 ),
//               ),
//               topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//               rightTitles:
//                   const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//             ),
//             gridData: const FlGridData(show: false),
//             borderData: FlBorderData(show: false),
//           ),
//         ),
//         const SizedBox(height: 20),
//         RichText(
//           text: const TextSpan(
//             children: [
//               TextSpan(
//                 text: "You've completed ",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//               TextSpan(
//                 text: "3",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               TextSpan(
//                 text: " out of ",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//               TextSpan(
//                 text: "7",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               TextSpan(
//                 text: " daily goals.",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildIconText(
//       IconData icon, String text, Color iconColor, Color textColor) {
//     return Row(
//       children: [
//         Icon(icon, color: iconColor),
//         const SizedBox(width: 5),
//         Text(
//           text,
//           style: TextStyle(
//             color: textColor,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }
