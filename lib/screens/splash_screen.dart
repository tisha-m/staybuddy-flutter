import 'dart:async';
import 'package:flutter/material.dart';
import '../user/screens/login.dart';
import '../admin/screens/login.dart';
import '../resources/imagestring.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showSelectionScreen = false;

  @override
  void initState() {
    super.initState();

    // Wait for 3 seconds
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          showSelectionScreen = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    // After 3 seconds show white screen
    if (showSelectionScreen) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        
                const Text(
                  'Welcome to StayBuddy',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF356B48),
                  ),
                ),
        
                const SizedBox(height: 40),
        
                // USER BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserLoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF356B48),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'USER',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
        
                const SizedBox(height: 20),
        
                // ADMIN BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminLoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF356B48),
                      side: const BorderSide(
                        color: Color(0xFF356B48),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'ADMIN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    // First 3 seconds: SPLASH SCREEN
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          ss,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

