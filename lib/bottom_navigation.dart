import 'package:codesbreak_fitness/ui/activity/activity.dart';
import 'package:codesbreak_fitness/ui/statistics/statistics.dart';
import 'package:codesbreak_fitness/ui/home_page/home.dart';
import 'package:codesbreak_fitness/ui/profile/profile.dart';
import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:codesbreak_fitness/utls/icon.dart';
import 'package:flutter/material.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getSelectedPage(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          top: 12.0,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: SizedBox(
            height: 80,
            child: BottomNavigationBar(
              backgroundColor: AppsColors.botomBackgroundColor,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: _buildIcon(AppIconPath.bottomHomeIconPath, 0),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: _buildIcon(AppIconPath.bottomactivityIconPath, 1),
                  label: 'Activity',
                ),
                BottomNavigationBarItem(
                  icon: _buildIcon(AppIconPath.bottombarlineIconPath, 2),
                  label: 'Statistics',
                ),
                BottomNavigationBarItem(
                  icon: _buildIcon(AppIconPath.bottomprofileIconPath, 3),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: AppsColors.bottomActiveColor,
              unselectedItemColor: AppsColors.bottomDeactiveColor,
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(String assetPath, int index) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        _selectedIndex == index
            ? AppsColors.bottomActiveColor
            : AppsColors.bottomDeactiveColor,
        BlendMode.srcIn,
      ),
      child: SizedBox(
        height: 24,
        width: 24,
        child: Image.asset(assetPath),
      ),
    );
  }

  Widget _getSelectedPage(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const Activity();
      case 2:
        return const Statistics();
      case 3:
        return const Profile();
      default:
        return const Text('Home Page');
    }
  }
}
