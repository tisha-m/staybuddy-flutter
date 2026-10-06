import 'package:flutter/material.dart';
import '../widgets/user_navbar.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // =========================
      // APP BAR
      // =========================
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,

        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
            ),

            const Expanded(
              child: Center(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Keeps title centered
            const SizedBox(width: 48),
          ],
        ),
      ),

      // =========================
      // BODY
      // =========================
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // =========================
            // INTRODUCTION
            // =========================
            Text(
              'Welcome to StayBuddy. Your privacy is '
              'important to us. This Privacy Policy '
              'explains how we collect, use, and '
              'protect your information while using our '
              'application.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            // =========================
            // 1. INFORMATION WE COLLECT
            // =========================
            Text(
              '1. Information We Collect:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 2),

            Text(
              'When you use StayBuddy, we may '
              'collect the following information:',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 2),

            Text(
              'Personal Information:',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),

            Text(
              '• Full Name\n'
              '• Email Address\n'
              '• Mobile Number\n'
              '• Gender',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            Text(
              'Account Information:',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),

            Text(
              '• Login credentials\n'
              '• Profile details',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            Text(
              'Usage Information:',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),

            Text(
              '• Search preferences\n'
              '• Favourite stays\n'
              '• Pages visited within the application',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            // =========================
            // 2. HOW WE USE YOUR INFORMATION
            // =========================
            Text(
              '2. How We Use Your Information:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'The information collected is used to:',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            Text(
              '• Create and manage your account.\n'
              '• Display personalized stay listings.\n'
              '• Save your favourite stays.\n'
              '• Improve the application\'s\n'
              '   performance and user experience.\n'
              '• Respond to user queries and support\n'
              '   requests.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            // =========================
            // 3. DATA PROTECTION
            // =========================
            Text(
              '3. Data Protection:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'We take reasonable measures to protect '
              'your personal information from unauthorized '
              'access, misuse, or disclosure.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            // =========================
            // 4. USER RIGHTS
            // =========================
            Text(
              '4. Your Rights:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'You may access, update, or request deletion '
              'of your personal information through your '
              'account settings.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            // =========================
            // 5. POLICY UPDATES
            // =========================
            Text(
              '5. Changes to This Policy:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'We may update this Privacy Policy from '
              'time to time. Any changes will be reflected '
              'on this page.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 25),
          ],
        ),
      ),

      // =========================
      // NAVBAR
      // =========================
      bottomNavigationBar: const UserNavBar(selectedIndex: 3),
    );
  }
}
