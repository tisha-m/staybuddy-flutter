import 'package:flutter/material.dart';
import 'package:staybuddy/resources/imagestring.dart';
import '../widgets/user_navbar.dart';

// ==================================================
// STAY MODEL
// ==================================================
class StayItem {
  final String name;
  final String address;
  final String contact;
  final String gender; // 'Male', 'Female', 'Co-Living'
  final List<String> roomTypes; // ['AC', 'Non-AC']
  final List<String>
  occupancy; // ['Single', 'Double', 'Triple', 'Four', 'Five']
  final String meals;
  final int imageIndex;
  bool isFavorite;

  StayItem({
    required this.name,
    required this.address,
    required this.contact,
    required this.gender,
    required this.roomTypes,
    required this.occupancy,
    required this.meals,
    required this.imageIndex,
    this.isFavorite = false,
  });
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  String searchText = '';
  String selectedGender = '';
  String selectedRoom = '';
  String selectedOccupancy = '';

  final List<StayItem> _allStays = [
    StayItem(
      name: "Kashmira's Girls PG",
      address:
          "Tagor Nagar Street 2, Kotecha Chowk, Kalavad Road, Rajkot, Gujarat 360005.",
      contact: "+91 63519 83760.",
      gender: "Female",
      roomTypes: ["AC", "Non-AC"],
      occupancy: ["Double", "Triple"],
      meals: "Included 2 to 3 times a day.",
      imageIndex: 2,
    ),
    StayItem(
      name: "Elite Boys Hostel",
      address: "University Road, near Pushkar Dham, Rajkot, Gujarat 360005.",
      contact: "+91 98765 43210.",
      gender: "Male",
      roomTypes: ["AC"],
      occupancy: ["Single", "Double"],
      meals: "Included 3 times a day.",
      imageIndex: 0, // Fallback if list size varies
    ),
    StayItem(
      name: "Co-Stay Co-Living Spaces",
      address: "Yagnik Road, Opposite Imperial Palace, Rajkot, Gujarat 360001.",
      contact: "+91 88888 77777.",
      gender: "Co-Living",
      roomTypes: ["Non-AC"],
      occupancy: ["Single", "Four"],
      meals: "Self-cooking & Tiffin options available.",
      imageIndex: 1,
    ),
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void searchStay(String value) {
    setState(() {
      searchText = value.trim();
    });
  }

  List<StayItem> get filteredStays {
    return _allStays.where((stay) {
      if (searchText.isNotEmpty) {
        final query = searchText.toLowerCase();
        final matchesName = stay.name.toLowerCase().contains(query);
        final matchesAddress = stay.address.toLowerCase().contains(query);
        if (!matchesName && !matchesAddress) return false;
      }

      if (selectedGender.isNotEmpty && stay.gender != selectedGender) {
        return false;
      }

      if (selectedRoom.isNotEmpty && !stay.roomTypes.contains(selectedRoom)) {
        return false;
      }

      if (selectedOccupancy.isNotEmpty &&
          !stay.occupancy.contains(selectedOccupancy)) {
        return false;
      }

      return true;
    }).toList();
  }

  bool get showResult {
    return searchText.isNotEmpty ||
        selectedGender.isNotEmpty ||
        selectedRoom.isNotEmpty ||
        selectedOccupancy.isNotEmpty;
  }

  void clearFilters() {
    setState(() {
      searchController.clear();
      searchText = '';
      selectedGender = '';
      selectedRoom = '';
      selectedOccupancy = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    final results = filteredStays;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
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
            TextField(
              controller: searchController,
              onChanged: searchStay,
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
            const SizedBox(height: 15),

            SizedBox(
              height: 45,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    filterChip('Male', selectedGender, () {
                      setState(() {
                        selectedGender = selectedGender == 'Male' ? '' : 'Male';
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
                    filterChip('Co-Living', selectedGender, () {
                      setState(() {
                        selectedGender = selectedGender == 'Co-Living'
                            ? ''
                            : 'Co-Living';
                      });
                    }),
                    const SizedBox(width: 8),
                    filterChip('AC', selectedRoom, () {
                      setState(() {
                        selectedRoom = selectedRoom == 'AC' ? '' : 'AC';
                      });
                    }),
                    const SizedBox(width: 8),
                    filterChip('Non-AC', selectedRoom, () {
                      setState(() {
                        selectedRoom = selectedRoom == 'Non-AC' ? '' : 'Non-AC';
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
                    const SizedBox(width: 8),
                    filterChip('Double', selectedOccupancy, () {
                      setState(() {
                        selectedOccupancy = selectedOccupancy == 'Double'
                            ? ''
                            : 'Double';
                      });
                    }),
                    const SizedBox(width: 8),
                    filterChip('Triple', selectedOccupancy, () {
                      setState(() {
                        selectedOccupancy = selectedOccupancy == 'Triple'
                            ? ''
                            : 'Triple';
                      });
                    }),
                    const SizedBox(width: 8),
                    filterChip('Four', selectedOccupancy, () {
                      setState(() {
                        selectedOccupancy = selectedOccupancy == 'Four'
                            ? ''
                            : 'Four';
                      });
                    }),
                    const SizedBox(width: 8),
                    filterChip('Five', selectedOccupancy, () {
                      setState(() {
                        selectedOccupancy = selectedOccupancy == 'Five'
                            ? ''
                            : 'Five';
                      });
                    }),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),

            if (showResult)
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: clearFilters,
                  child: const Text(
                    'Clear Filters',
                    style: TextStyle(
                      color: Color(0xFF356B48),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            Expanded(
              child: showResult
                  ? (results.isEmpty
                        ? Center(
                            child: Text(
                              'No matching stays found.',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                              ),
                            ),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.only(top: 5, bottom: 20),
                            itemCount: results.length + 1,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    '${results.length.toString().padLeft(2, '0')} stays found',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                );
                              }
                              // Offset by 1 because index 0 is the counter text header
                              final item = results[index - 1];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: buildResultCard(item),
                              );
                            },
                          ))
                  : buildEmptySearch(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const UserNavBar(selectedIndex: 1),
    );
  }

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

  Widget buildResultCard(StayItem item) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    // Fallback control just in case the list bounds change
                    girls_pg.length > item.imageIndex
                        ? girls_pg[item.imageIndex]
                        : girls_pg[0],
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: 90,
                  child: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.address, style: const TextStyle(fontSize: 12)),
                  const SizedBox(height: 7),
                  Text(
                    'Contact Number: ${item.contact}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'Type of Room: ${item.roomTypes.join(' and ')} rooms.',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'Occupancy: ${item.occupancy.join(' and ')} Sharing.',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'Meals: ${item.meals}',
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  item.isFavorite = !item.isFavorite;
                });
              },
              child: Icon(
                item.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: item.isFavorite ? Colors.red : Colors.black,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
