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

            const SizedBox(width: 48),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome to StayBuddy. Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information while using our application.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            Text(
              '1. Information We Collect:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 2),

            Text(
              'When you use StayBuddy, we may collect the following information:',
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
              '• Improve the application\'s performance and user experience.\n'
              '• Respond to user queries and support requests.\n'
              '• Maintain platform security.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            Text(
              '3. Data Security:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'We take reasonable measures to protect your personal information from unauthorized access, misuse, or disclosure.\n'
              'While we strive to keep your information secure, no online platform can guarantee complete security.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            Text(
              '4. Sharing of Information:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'StayBuddy does not sell or rent your personal information to third parties.\n'
              'Your information may only be shared:\n'
              '• To maintain or improve our services.\n'
              '• With your consent.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            Text(
              '5. User Responsibilities:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'As a user, you are responsible for:\n'
              '• Providing accurate information.\n'
              '• Keeping your login credentials secure.\n'
              '• Not sharing your account password with others.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),

            Text(
              '6. Your Rights:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'You have the right to:\n'
              '• View your profile information.\n'
              '• Update your personal details.\n'
              '• Remove saved favourite stays.\n'
              '• Request account deletion by contacting the administrator.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),
            Text(
              '7. Third-Party Links:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'StayBuddy may contain links or contact information for property owners. We are not responsible for the privacy practices of external websites or services.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),
            Text(
              "8. Children's Privacy:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'StayBuddy is intended for users who are at least 18 years old or have permission from a parent or guardian to use the platform.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),
            Text(
              '9. Changes to This Privacy Policy:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'We may update this Privacy Policy from time to time. Any changes will be reflected on this page with the latest update date.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 18),
            Text(
              '10. Contact Us:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'If you have any questions regarding Privacy Policy, you can contact us:\n'
              'StayBuddy Support\n'
              '📧 Email: support@staybuddy.com\n'
              '📞 Phone: +91-9876543210\n'
              '🕒 Support Hours: Monday – Saturday, 9:00 AM – 6:00 PM',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 25),
          ],
        ),
      ),

      bottomNavigationBar: const UserNavBar(selectedIndex: 3),
    );
  }
}
