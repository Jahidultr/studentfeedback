import 'package:flutter/material.dart';
import 'package:studentfeedback/screens/feedback_indivitual_screen/cafeteria_screen.dart';
import 'package:studentfeedback/screens/feedback_indivitual_screen/lab_feedback_screen.dart';
import 'package:studentfeedback/screens/feedback_indivitual_screen/teachinf_qua_screen.dart';
import 'package:studentfeedback/screens/feedback_indivitual_screen/transports_screen.dart';

import '../widgets/feedback_item.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Feedback Category',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                FeedbackItem(
                  title: 'Cafeteria',
                  subtitle: 'Rate the cafeteria services',
                  icon: Icons.restaurant,
                  progress: 0.75,
                  onFeedbackPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CafeteriaScreen(),
                      ),
                    );
                  },
                ),
                FeedbackItem(
                  title: 'Lab Class',
                  subtitle: 'Rate the lab class experience',
                  icon: Icons.computer,
                  progress: 0.80,
                  onFeedbackPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LabFeedbackScreen(),
                      ),
                    );
                  },
                ),
                FeedbackItem(
                  title: 'Teaching Quality',
                  subtitle: 'Rate the teaching quality',
                  icon: Icons.school,
                  progress: 0.90,
                  onFeedbackPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TeachingQuaScreen(),
                      ),
                    );
                  },
                ),
                FeedbackItem(
                  title: 'Transport Quality',
                  subtitle: 'Rate the transport services',
                  icon: Icons.directions_bus,
                  progress: 0.40,
                  onFeedbackPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TransportScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
