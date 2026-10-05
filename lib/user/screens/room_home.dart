import 'package:flutter/material.dart';
import 'package:staybuddy/resources/imagestring.dart';
import 'pg_home.dart';
import 'hostel_home.dart';

class RoomHome extends StatefulWidget {
  const RoomHome({super.key});

  @override
  State<RoomHome> createState() => _RoomHomeState();
}

class _RoomHomeState extends State<RoomHome> {
  String selectedType = '';
  ButtonStyle filterButtonStyle(String type) {
    bool isSelected = selectedType == type;

    return ElevatedButton.styleFrom(
      backgroundColor: isSelected ? const Color(0xFF428D52) : Colors.white,
      foregroundColor: isSelected ? Colors.white : const Color(0xFF428D52),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Color(0xFF428D52)),
      ),
      minimumSize: const Size(100, 50),
    );
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hello User \nFind your perfect stay',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

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
            SizedBox(height: 20),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PGHome()),
                    );
                    setState(() {
                      selectedType = 'PGs';
                    });
                  },
                  style: filterButtonStyle('PGs'),
                  child: const Text('PGs'),
                ),
                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HostelHome(),
                      ),
                    );
                    setState(() {
                      selectedType = 'Hostels';
                    });
                  },
                  style: filterButtonStyle('Hostels'),
                  child: const Text('Hostels'),
                ),
                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RoomHome()),
                    );
                    setState(() {
                      selectedType = 'Rooms';
                    });
                  },
                  style: filterButtonStyle('Rooms'),
                  child: const Text('Rooms'),
                ),
              ],
            ),
            SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recommended Rooms',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: [
                  //Card 1
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                rooms[0],
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 5),
                              const SizedBox(
                                width: 100,
                                child: Text(
                                  'Broker: Mohit Sarvaiya',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Royal Park, Rajkot, Gujarat 360005.'),
                                Text('Type of Room: Both AC and Non-AC rooms.'),
                                Text('Occupancy: 3 Beds per room.'),
                                Text('Gender: Male'),
                                Text('Price: ₹6000 per month'),
                              ],
                            ),
                          ),
                          const Icon(Icons.favorite_border, size: 35),
                        ],
                      ),
                    ),
                  ),

                  //Card 2
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                rooms[1],
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 5),
                              const SizedBox(
                                width: 100,
                                child: Text(
                                  "Broker: Chetna Bharvada",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Address: Shakti Nagar, Rajkot, Gujarat 360005.',
                                ),
                                Text('Room Options: Only Non-AC rooms.'),
                                Text('Occupancy: 4 beds per room.'),
                                Text('Gender: Female'),
                                Text('Price: ₹2500 per month.'),
                              ],
                            ),
                          ),

                          const Icon(Icons.favorite_border, size: 35),
                        ],
                      ),
                    ),
                  ),

                  //Card 3
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                rooms[2],
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 5),
                              const SizedBox(
                                width: 100,
                                child: Text(
                                  'Broker: Rathod Rajdeepsinh',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Address: Pushkardham Society, Rajkot, Gujarat 360005.',
                                ),
                                Text('Room Options: Only Non-AC rooms.'),
                                Text('Occupancy: 3 to 5 Beds per room.'),
                                Text('Gender: Female'),
                                Text('Price: ₹8000 per month.'),
                              ],
                            ),
                          ),
                          const Icon(Icons.favorite_border, size: 35),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
