import 'package:flutter/material.dart';
import './home_screen.dart';
import './pg_home.dart';
import './hostel_home.dart';
import './room_home.dart';
import '../widgets/user_navbar.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  String selectedType = '';

  ButtonStyle filterButtonStyle(String type) {
    bool isSelected = selectedType == type;

    return ElevatedButton.styleFrom(
      backgroundColor: isSelected
          ? const Color(0xFF428D52)
          : const Color(0xFFE0E0E0),

      foregroundColor: isSelected ? Colors.white : Colors.black,

      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

      minimumSize: const Size(100, 50),
    );
  }

  // This decides which content is shown
  Widget getSelectedPage() {
    if (selectedType == 'PGs') {
      return const PGHome();
    }

    if (selectedType == 'Hostels') {
      return const HostelHome();
    }

    if (selectedType == 'Rooms') {
      return const RoomHome();
    }

    // Default page
    return const UserHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'StayBuddy',
          style: TextStyle(
            color: Color(0xFF356B48),
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            // -------------------------
            // COMMON HEADER
            // -------------------------
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hello User\nFind your perfect stay',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),

            // -------------------------
            // SEARCH
            // -------------------------
            TextField(
              decoration: InputDecoration(
                hintText: 'Search by city,area or locality...',
                prefixIcon: const Icon(Icons.search),

                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFF428D52),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // -------------------------
            // FILTER BUTTONS
            // -------------------------
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedType = 'PGs';
                      });
                    },
                    style: filterButtonStyle('PGs'),
                    child: const Text('PG'),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedType = 'Hostels';
                      });
                    },
                    style: filterButtonStyle('Hostels'),
                    child: const Text('Hostel'),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedType = 'Rooms';
                      });
                    },
                    style: filterButtonStyle('Rooms'),
                    child: const Text('Room'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // -------------------------
            // CHANGING CONTENT
            // -------------------------
            Expanded(child: getSelectedPage()),
          ],
        ),
      ),
      bottomNavigationBar: const UserNavBar(selectedIndex: 0),
    );
  }
}
