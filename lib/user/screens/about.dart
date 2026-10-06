import 'package:flutter/material.dart';
import '../widgets/user_navbar.dart';

class AboutUser extends StatefulWidget {
  const AboutUser({super.key});

  @override
  State<AboutUser> createState() => _AboutUserState();
}

class _AboutUserState extends State<AboutUser> {
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
                  'About StayBuddy',
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

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Finding a safe and comfortable place to "
              "stay in a new city shouldn't be stressful. "
              "Our app is designed to make the search "
              "for PGs, hostels, and rental rooms "
              "simple, fast, and reliable.",
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 20),

            Text(
              "Whether you're a student moving for "
              "college, a working professional "
              "relocating for a job, or someone looking "
              "for a temporary stay, we help you "
              "discover accommodations that match "
              "your budget, preferred location, and "
              "required amenities.",
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 20),

            Text(
              'Our platform allows you to:',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 2),

            Text(
              '• Search nearby PGs, hostels, and\n'
              '   rental rooms.\n'
              '• Filter properties by price, location,\n'
              '   room type, and facilities.\n'
              '• View detailed property information\n'
              '   with photos and amenities.\n'
              '• Contact property owners directly for\n'
              '   quick inquiries.\n'
              '• Save your favorite properties for\n'
              '   future reference.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 20),

            Text(
              'Our Mission',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 2),

            Text(
              'Our mission is to simplify the '
              'accommodation search experience by '
              'connecting people with verified and '
              'affordable living spaces, helping them '
              'feel at home wherever life takes them.',
              style: TextStyle(fontSize: 17, height: 1.2),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar: const UserNavBar(selectedIndex: 3),
    );
  }
}
