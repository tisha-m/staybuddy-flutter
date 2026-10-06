import 'package:flutter/material.dart';
import 'package:staybuddy/resources/imagestring.dart';
import '../widgets/user_navbar.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  // Saved stays
  List<bool> favorites = [true, true];

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
                  'Saved Stays',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
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

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: ListView(
          children: [
            buildFavoriteCard(
              image: girls_pg[2],
              name: "Kashmira's Girls PG",
              address:
                  'Tagor Nagar Street 2, Kotecha Chowk, '
                  'Kalavad Road, Rajkot, Gujarat 360005.',
              contact: '+91 63519 83760',
              room: 'Both AC and Non-AC rooms.',
              occupancy: 'Double and Triple Sharing.',
              meals: 'Included 2 to 3 times a day.',
              index: 0,
            ),

            const SizedBox(height: 20),

            buildFavoriteCard(
              image: boys_pg[3],
              name: 'The Penthouse Boys PG',
              address:
                  'Harihar Society, Amin Marg, Kotecha Nagar, '
                  'Rajkot, Gujarat 360001.',
              contact: '+91 84600 42602',
              room: 'Both AC and Non-AC rooms.',
              occupancy: 'Single, Double, and Triple Sharing.',
              meals: 'Not Included',
              index: 1,
            ),
          ],
        ),
      ),

      bottomNavigationBar: const UserNavBar(selectedIndex: 2),
    );
  }

  Widget buildFavoriteCard({
    required String image,
    required String name,
    required String address,
    required String contact,
    required String room,
    required String occupancy,
    required String meals,
    required int index,
  }) {
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
                    image,
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 4),

                SizedBox(
                  width: 90,

                  child: Text(
                    name,
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
                  Text(address, style: const TextStyle(fontSize: 12)),
                  const SizedBox(height: 7),

                  Text(
                    'Contact Number: $contact',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 7),

                  Text(
                    'Type of Room: $room',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 7),

                  Text(
                    'Occupancy: $occupancy',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 7),

                  Text('Meals: $meals', style: const TextStyle(fontSize: 12)),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  favorites[index] = !favorites[index];
                });

                // Remove card if unfavorited
                if (!favorites[index]) {
                  // You can later add actual database removal here.
                }
              },

              child: Icon(
                favorites[index] ? Icons.favorite : Icons.favorite_border,
                color: favorites[index] ? Colors.red : Colors.black,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
