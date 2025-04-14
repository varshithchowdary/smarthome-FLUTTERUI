import 'package:flutter/material.dart';
import 'package:smarthome/utils/setting_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Profile"),
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Profile Picture
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('lib/icons/bala.jpg'),
                      ),
                    ),
                    // const SizedBox(height: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Varshit Kommi ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "varshit@gmail.com",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.edit, color: Colors.grey[700]),
              ],
            ),

            const SizedBox(height: 30),

            // Some settings or stats
            CustomListTile(
              leadingIcon: Icons.key,
              title: "Account",
              onTap: () {
                // Add your action for Privacy here
              },
            ),
            CustomListTile(
              leadingIcon: Icons.lock,
              title: "Privacy",
              onTap: () {
                // Add your action for Privacy here
              },
            ),
            CustomListTile(
              leadingIcon: Icons.face,
              title: "Avatar",
              onTap: () {
                // Add your action for Privacy here
              },
            ),
            CustomListTile(
              leadingIcon: Icons.list,
              title: "Lists",
              onTap: () {
                // Add your action for Privacy here
              },
            ),
            CustomListTile(
              leadingIcon: Icons.notification_add,
              title: "Notifications",
              onTap: () {
                // Add your action for Privacy here
              },
            ),
            CustomListTile(
              leadingIcon: Icons.language,
              title: "App language",
              onTap: () {
                // Add your action for Privacy here
              },
            ),
            CustomListTile(
              leadingIcon: Icons.help,
              title: "Help",
              onTap: () {
                // Add your action for Privacy here
              },
            ),
          ],
        ),
      ),
    );
  }
}
