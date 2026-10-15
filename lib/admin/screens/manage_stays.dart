import 'package:flutter/material.dart';
import '../widgets/admin_navbar.dart';
import 'package:staybuddy/resources/imagestring.dart';
import 'add_stay.dart';
import '../../resources/stay.dart';

class ManageStays extends StatefulWidget {
  const ManageStays({super.key});

  @override
  State<ManageStays> createState() => _ManageStaysState();
}

class _ManageStaysState extends State<ManageStays> {
  List<Map<String, dynamic>> stays = [
    {
      'image': girls_hostel[1],
      'name': 'Galaxy Girls Hostel',
      'address':
          '15A, Street No.11, Manhar Plot, Mangla Main Road, Rajkot, Gujarat 360002.',
      'contact': '+91 99790 58384',
      'room': 'Both AC and Non-AC rooms.',
      'occupancy': 'Single, Double, Triple, Four and Five Sharing.',
      'meals': 'Included 3 times a day.',
    },
    {
      'image': girls_hostel[7],
      'name': 'Shiv Girls Hostel',
      'address':
          'Shreenathji Park Street No. 3, Behind HP Petrol Pump, Uni Road, Rajkot, Gujarat 360005.',
      'contact': '+91 9054778528',
      'room': 'Both AC and Non-AC rooms.',
      'occupancy': 'Double and Triple Sharing.',
      'meals': 'Included 3 times a day.',
    },
    {
      'image': girls_hostel[0],
      'name': 'Broker: Mohit Sarvaiya',
      'address': 'Royal Park, Rajkot, Gujarat',
      'room': 'Both AC and Non-AC rooms.',
      'occupancy': '3 Beds per room.',
      'gender': 'Male',
      'price': '₹6000 per month',
    },
    {
      'image': girls_hostel[2],
      'name': 'Broker: Chetna Bharvada',
      'address': 'Shakti Nagar, Rajkot, Gujarat.',
      'room': 'Only Non-AC rooms.',
      'occupancy': '4 beds per room.',
      'gender': 'Female',
      'price': '₹2500 per month',
    },
  ];

  void deleteStay(int index) {
    setState(() {
      stays.removeAt(index);
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Stay deleted successfully')));
  }

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
                  'Stays Lists',
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

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: ListView.builder(
          padding: const EdgeInsets.only(top: 5, bottom: 100),

          itemCount: stays.length,

          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),

              child: buildStayCard(index, stays[index]),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddStay()),
          );
        },

        backgroundColor: const Color(0xFFF58761),

        child: const Icon(Icons.add, color: Colors.white, size: 35),
      ),

      bottomNavigationBar: const AdminNavBar(selectedIndex: 1),
    );
  }

  Widget buildStayCard(int index, Map<String, dynamic> stay) {
    return Card(
      elevation: 2,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: Padding(
        padding: const EdgeInsets.all(8),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // ==================================
            // IMAGE + NAME
            // ==================================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),

                  child: Image.asset(
                    stay['image'],
                    width: 95,
                    height: 95,
                    fit: BoxFit.cover,
                    cacheWidth: 190,
                    cacheHeight: 190,
                  ),
                ),

                const SizedBox(height: 4),

                SizedBox(
                  width: 95,

                  child: Text(
                    stay['name'],
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(width: 10),

            // ==================================
            // DETAILS
            // ==================================
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(stay['address'], style: const TextStyle(fontSize: 12)),

                  const SizedBox(height: 8),

                  if (stay['contact'] != null)
                    Text(
                      'Contact Number: ${stay['contact']}',
                      style: const TextStyle(fontSize: 12),
                    ),

                  const SizedBox(height: 8),

                  Text(
                    'Type of Room: ${stay['room']}',
                    style: const TextStyle(fontSize: 12),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Occupancy: ${stay['occupancy']}',
                    style: const TextStyle(fontSize: 12),
                  ),

                  if (stay['meals'] != null) ...[
                    const SizedBox(height: 8),

                    Text(
                      'Meals: ${stay['meals']}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],

                  if (stay['gender'] != null) ...[
                    const SizedBox(height: 8),

                    Text(
                      'Gender: ${stay['gender']}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],

                  if (stay['price'] != null) ...[
                    const SizedBox(height: 8),

                    Text(
                      'Price: ${stay['price']}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ],
              ),
            ),

            // ==================================
            // EDIT + DELETE
            // ==================================
            Column(
              children: [
                // EDIT
                SizedBox(
                  width: 32,
                  height: 32,

                  child: IconButton(
                    padding: EdgeInsets.zero,

                    onPressed: () {
                      // Open Edit Stay page later
                    },

                    icon: const Icon(
                      Icons.edit_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // DELETE
                SizedBox(
                  width: 32,
                  height: 32,

                  child: IconButton(
                    padding: EdgeInsets.zero,

                    onPressed: () {
                      deleteStay(index);
                    },

                    icon: const Icon(Icons.delete, color: Colors.red, size: 23),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
