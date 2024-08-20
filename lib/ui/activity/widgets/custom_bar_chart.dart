import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top:  12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBarRow(percentage: 34, color: Colors.amber, label: "22%"),
            const SizedBox(height: 28),
            _buildBarRow(percentage: 75, color: Colors.blue, label: "50%"),
            const SizedBox(height: 32),
            _buildBarRow(percentage: 13, color: Colors.red, label: "13%"),
            const SizedBox(height: 20),
            _buildBarRow(percentage: 15, color: Colors.black, label: "15%"),
          ],
        ),
      ),
    );
  }

  Widget _buildBarRow({
    required int percentage,
    required Color color,
    required String label,
  }) {
    return Row(
      children: [
        Expanded(
          flex: percentage,
          child: Container(
            height: 9,
            color: color,
          ),
        ),
        Expanded(
          flex: 100 - percentage,
          child: Container(),  
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}

 
