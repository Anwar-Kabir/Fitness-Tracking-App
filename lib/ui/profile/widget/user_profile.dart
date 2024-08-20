import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.grey),
        color: AppsColors.botomBackgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(AppIconPath.bottompellipsIconPath),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Johan Smith',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text('joined 15-06-2024'),
               
              const SizedBox(height: 8),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "180 ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppsColors.tileTextColor),
                  ),
                  TextSpan(
                    text: "m • ",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppsColors.tileTextColor),
                  ),
                  TextSpan(
                    text: "82 ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppsColors.tileTextColor),
                  ),
                  TextSpan(
                    text: "kg • ",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppsColors.tileTextColor),
                  ),
                  TextSpan(
                    text: "30 ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppsColors.tileTextColor),
                  ),
                  TextSpan(
                    text: "yrs",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppsColors.tileTextColor),
                  ),
                ]),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: AppsColors.bottomActiveColor),
            child: const Text(
              'Edit',
              style: TextStyle(color: AppsColors.bgColor, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
