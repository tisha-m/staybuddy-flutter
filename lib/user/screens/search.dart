import 'package:flutter/material.dart';
import 'package:staybuddy/resources/imagestring.dart';
import '../widgets/user_navbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  bool showResult = false;
  bool isFavorite = false;

  String selectedType = '';
  String selectedGender = '';
  String selectedRoom = '';
  String selectedOccupancy = '';

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void searchStay(String value) {
    if (value.trim().isEmpty) {
      setState(() {
        showResult = false;
      });
    } else {
      setState(() {
        showResult = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // -------------------------
      // APP BAR
      // -------------------------
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
                  'Search',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(width: 48),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // -------------------------
            // SEARCH FIELD
            // -------------------------
            TextField(
              controller: searchController,

              onSubmitted: searchStay,

              decoration: InputDecoration(
                hintText: 'Search by city, area or locality...',
                prefixIcon: const Icon(Icons.search, size: 28),

                filled: true,
                fillColor: const Color(0xFFF5F5F5),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xFFE0E0E0),
                    width: 2,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xFF428D52),
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // -------------------------
            // FILTERS
            // -------------------------
            if (showResult)
              SizedBox(
                height: 40,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      filterChip('PG', selectedType, () {
                        setState(() {
                          selectedType = selectedType == 'PG' ? '' : 'PG';
                        });
                      }),

                      const SizedBox(width: 8),

                      filterChip('Female', selectedGender, () {
                        setState(() {
                          selectedGender = selectedGender == 'Female'
                              ? ''
                              : 'Female';
                        });
                      }),

                      const SizedBox(width: 8),

                      filterChip('AC', selectedRoom, () {
                        setState(() {
                          selectedRoom = selectedRoom == 'AC' ? '' : 'AC';
                        });
                      }),

                      const SizedBox(width: 8),

                      filterChip('Single', selectedOccupancy, () {
                        setState(() {
                          selectedOccupancy = selectedOccupancy == 'Single'
                              ? ''
                              : 'Single';
                        });
                      }),
                    ],
                  ),
                ),
              ),

            const SizedBox(height: 15),

            // -------------------------
            // RESULT COUNT
            // -------------------------
            if (showResult)
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '01 stay found',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),

            if (showResult) const SizedBox(height: 15),

            // -------------------------
            // RESULT / EMPTY SCREEN
            // -------------------------
            Expanded(
              child: showResult
                  ? ListView(children: [buildResultCard()])
                  : buildEmptySearch(),
            ),
          ],
        ),
      ),

      // -------------------------
      // NAVBAR
      // -------------------------
      bottomNavigationBar: const UserNavBar(selectedIndex: 1),
    );
  }

  // ==========================================================
  // FILTER CHIP
  // ==========================================================

  Widget filterChip(String text, String selectedValue, VoidCallback onTap) {
    bool isSelected = selectedValue == text;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),

        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF356B48) : const Color(0xFFE0E0E0),

          borderRadius: BorderRadius.circular(25),
        ),

        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xFF356B48),

            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // ==========================================================
  // EMPTY SEARCH SCREEN
  // ==========================================================

  Widget buildEmptySearch() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search, size: 130, color: Colors.grey.shade300),

          const SizedBox(height: 10),

          Text(
            'Search your perfect stay!',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
          ),
        ],
      ),
    );
  }

  // ==========================================================
  // RESULT CARD
  // ==========================================================

  Widget buildResultCard() {
    return Card(
      elevation: 2,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: Padding(
        padding: const EdgeInsets.all(8),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // IMAGE + NAME
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: Image.asset(
                    girls_pg[2],
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 4),

                const SizedBox(
                  width: 90,

                  child: Text(
                    "Kashmira's Girls PG",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            const SizedBox(width: 8),

            // DETAILS
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Tagor Nagar Street 2, Kotecha Chowk, '
                    'Kalavad Road, Rajkot, Gujarat 360005.',
                    style: TextStyle(fontSize: 12),
                  ),

                  SizedBox(height: 7),

                  Text(
                    'Contact Number: +91 63519 83760.',
                    style: TextStyle(fontSize: 12),
                  ),

                  SizedBox(height: 7),

                  Text(
                    'Type of Room: Both AC and Non-AC rooms.',
                    style: TextStyle(fontSize: 12),
                  ),

                  SizedBox(height: 7),

                  Text(
                    'Occupancy: Double and Triple Sharing.',
                    style: TextStyle(fontSize: 12),
                  ),

                  SizedBox(height: 7),

                  Text(
                    'Meals: Included 2 to 3 times a day.',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),

            // FAVORITE
            GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },

              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,

                color: isFavorite ? Colors.red : Colors.black,

                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
