import 'package:flutter/material.dart';
import 'package:staybuddy/admin/screens/about.dart';
import 'package:staybuddy/admin/screens/forgot_password.dart';
import 'package:staybuddy/admin/screens/login.dart';
import 'package:staybuddy/admin/screens/privacy_policy.dart';
import '../widgets/admin_navbar.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({super.key});

  @override
  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ==========================================
      // APP BAR
      // ==========================================
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

            const Spacer(),
          ],
        ),
      ),

      // ==========================================
      // BODY
      // ==========================================
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ======================================
            // ADMIN PROFILE IMAGE
            // ======================================
            Container(
              width: 85,
              height: 85,

              decoration: BoxDecoration(
                shape: BoxShape.circle,

                color: const Color(0xFFDCE9F8),

                border: Border.all(color: Colors.white, width: 2),
              ),

              child: const Icon(Icons.person, size: 60, color: Colors.black87),
            ),

            const SizedBox(height: 5),

            // ======================================
            // ADMIN NAME
            // ======================================
            const Text(
              'Admin',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            // ======================================
            // EMAIL
            // ======================================
            const Text('admin001@gmail.com', style: TextStyle(fontSize: 16)),

            const SizedBox(height: 72),

            // ======================================
            // CHANGE PASSWORD
            // ======================================
            adminOption(
              icon: Icons.lock,
              title: 'Change Password',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdminForgotPasswordScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            // ======================================
            // ABOUT STAYBUDDY
            // ======================================
            adminOption(
              icon: Icons.info_outline,
              title: 'About StayBuddy',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUser()),
                );
              },
            ),

            const SizedBox(height: 20),

            // ======================================
            // PRIVACY POLICY
            // ======================================
            adminOption(
              icon: Icons.security,
              title: 'Privacy Policy',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicy(),
                  ),
                );
              },
            ),

            const SizedBox(height: 25),

            // ======================================
            // LOGOUT
            // ======================================
            SizedBox(
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
                  foregroundColor: Colors.red,

                  elevation: 2,

                  padding: const EdgeInsets.symmetric(horizontal: 22),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),

                    side: const BorderSide(color: Color(0xFFE0E0E0)),
                  ),
                ),

                child: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // ======================================
            // FOOTER
            // ======================================
            const SizedBox(height: 95),

            const Text('StayBuddy v1.0.0', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 3),

            const Text('Made with ❤️ in India', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 25),
          ],
        ),
      ),

      // ==========================================
      // ADMIN NAVBAR
      // ==========================================
      bottomNavigationBar: const AdminNavBar(selectedIndex: 3),
    );
  }

  // ==========================================
  // PROFILE OPTION
  // ==========================================

  Widget adminOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),

      child: InkWell(
        onTap: onTap,

        borderRadius: BorderRadius.circular(15),

        child: Container(
          height: 55,

          padding: const EdgeInsets.symmetric(horizontal: 15),

          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius: BorderRadius.circular(15),

            border: Border.all(color: const Color(0xFFE0E0E0), width: 1.5),

            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),

          child: Row(
            children: [
              Icon(icon, color: Colors.black, size: 25),

              const SizedBox(width: 20),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
