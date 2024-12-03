import 'package:flutter/material.dart';

class AdminPanelScreen extends StatelessWidget {
  AdminPanelScreen({super.key});

  // Sample messages to be displayed on the Admin Panel
  final List<String> messages = [
    "Message from Anonymous Student : The lab was great!",
    "Message from Anonymous Student: I need more explanation on the topic.",
    "Message from Anonymous Student: I enjoyed the class, but the lab session was too long.",
    "Message from Anonymous Student: It would be better if we had more hands-on practice.",
    "Message from Anonymous Student: The transports car and bus are not enough for all student, thank you!",
    "Message from Anonymous Student: cafeteria food quality not good  , thank you!",
    "Message from Anonymous Student: The material provided was very helpful, thank you!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(
              Icons.admin_panel_settings,
              size: 100,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            const Text(
              'Messages from Students',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Display the list of messages in a ListView
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        messages[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
