import 'package:flutter/material.dart';
import '../widgets/user_navbar.dart';
import 'package:staybuddy/resources/imagestring.dart';
import 'edit_profile.dart';
import 'about.dart';
import 'faq.dart';
import 'privacy_policy.dart';
import 'login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,

        title: Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CircleAvatar(
              radius: 42,
              backgroundColor: const Color(0xFFF2BD67),
              child: ClipOval(
                child: Image.asset(
                  profile,
                  width: 84,
                  height: 84,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5),

            const Text(
              'Darshan Parmar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 2),
            const Text('dparmar259@rku.ac.in', style: TextStyle(fontSize: 14)),
            const SizedBox(height: 2),
            const Text('+91 50137 46913', style: TextStyle(fontSize: 14)),
            const SizedBox(height: 30),
            profileOption(
              icon: Icons.edit_outlined,
              title: 'Edit Profile',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfile()),
                );
              },
            ),

            const SizedBox(height: 20),
            profileOption(
              icon: Icons.favorite_border,
              title: 'My Saved Stays',
              onTap: () {
                Navigator.pushNamed(context, '/favorites');
              },
            ),
            const SizedBox(height: 20),

            profileOption(
              icon: Icons.info_outline,
              title: 'About StayBuddy',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUser(),
                    ),
                  );
              },
            ),
            const SizedBox(height: 20),

            profileOption(
              icon: Icons.question_mark_outlined,
              title: 'FAQ',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FAQ(),
                    ),
                  );
              },
            ),
            const SizedBox(height: 20),

            profileOption(
              icon: Icons.shield_outlined,
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
            const SizedBox(height: 22),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserLoginScreen(),
                    ),
                  );
              },

              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.red,
                side: const BorderSide(color: Colors.grey),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 14,
                ),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              child: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),

            const SizedBox(height: 28),
            const Text('StayBuddy v1.0.0', style: TextStyle(fontSize: 17)),
            const SizedBox(height: 3),
            const Text('Made with ❤️ in India', style: TextStyle(fontSize: 17)),
            const SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: const UserNavBar(selectedIndex: 3),
    );
  }

  Widget profileOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
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
              Icon(icon, color: Colors.black, size: 24),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(Icons.chevron_right, color: Colors.black, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
