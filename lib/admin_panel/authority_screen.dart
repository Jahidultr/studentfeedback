import 'package:flutter/material.dart';
import 'package:studentfeedback/admin_panel/Admin_panel_screen.dart';

class AuthorityScreen extends StatefulWidget {
  const AuthorityScreen({super.key});

  @override
  State<AuthorityScreen> createState() => _AuthorityScreenState();
}

class _AuthorityScreenState extends State<AuthorityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminPanelScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Green background
                  minimumSize: Size(200, 50), // Same size for all buttons
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional rounded corners
                  ),
                ),
                child: const Text(
                  'High Authority',
                  style: TextStyle(color: Colors.black), // Black text color
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminPanelScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Green background
                  minimumSize: Size(200, 50), // Same size for all buttons
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional rounded corners
                  ),
                ),
                child: const Text(
                  'Teachers Authority',
                  style: TextStyle(color: Colors.black), // Black text color
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminPanelScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Green background
                  minimumSize: Size(200, 50), // Same size for all buttons
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional rounded corners
                  ),
                ),
                child: const Text(
                  'Lower Authority',
                  style: TextStyle(color: Colors.black), // Black text color
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
