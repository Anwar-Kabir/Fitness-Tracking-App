import 'package:codesbreak_fitness/utls/colors.dart';
import 'package:flutter/material.dart';

class OthersMenu extends StatelessWidget {
  const OthersMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppsColors.botomBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Others", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('My Account'),
              onTap: () {
                 
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notification'),
              onTap: () {
                
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.policy),
              title: const Text('Privacy Policy'),
              onTap: () {
                 
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Log out'),
              onTap: () {
                 
              },
            ),
          ],
        ),
      ),
    );
  }
}
