import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppsColors.botomBackgroundColor,
      height: 70,
      child: ListTile(
        leading: const SizedBox(
          height: 45,
          width: 45,
          child: CircleAvatar(
            backgroundImage: AssetImage(AppIconPath.bottompellipsIconPath),
          ),
        ),
        title: RichText(
          text: const TextSpan(children: [
            TextSpan(
                text: "Hello!", style: TextStyle(fontWeight: FontWeight.w300, color: AppsColors.tileTextColor)),
            TextSpan(
                text: " Johan Smith",
                style: TextStyle(fontWeight: FontWeight.bold,  color: AppsColors.tileTextColor))
          ]),
        ),
        subtitle: const Text(
          "02 July 2024",
          style: TextStyle(fontSize: 12, color: AppsColors.subtileTextColor),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Image.asset(AppIconPath.bottomBellIconIconPath)),
      ),
    );
  }
}
