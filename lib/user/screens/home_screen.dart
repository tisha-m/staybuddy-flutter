import 'package:flutter/material.dart';
import 'package:staybuddy/resources/imagestring.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Recommended Stays',
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
                            girls_hostel[0],
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(
                            width: 100,
                            child: Text(
                              'Divine Girls Hostel and PG',
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
                              '“Padmalay”, Street No. 10, Kalavad Road, Rajkot, 360005.',
                            ),
                            Text('Contact Number: +91 88788 94094'),
                            Text('Type of Room: Both AC and Non-AC rooms.'),
                            Text('Occupancy: Double and Triple Sharing.'),
                            Text('Meals: Included 3 times a day.'),
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
                            girls_pg[2],
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(
                            width: 100,
                            child: Text(
                              "Kashmira's Girls PG",
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
                              'Tagor Nagar Street 2, Kotecha Chowk, Near Saurashtra Highschool, Kalavad Road, Rajkot, Gujarat 360005.',
                            ),
                            Text('Contact Number: +91 63519 83760.'),
                            Text('Type of Room: Both AC and Non-AC rooms.'),
                            Text('Occupancy: Double and Triple Sharing.'),
                            Text('Meals: Included 2 to 3 times a day.'),
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
                            boys_hostel[6],
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(
                            width: 100,
                            child: Text(
                              'Vaidik Boys Hostel',
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
                              'University Road, Indira Circle, Jalaram Nagar, Rajkot, Gujarat 360005.',
                            ),
                            Text('Contact Number: +91 99780 57515.'),
                            Text('Type of Room: Only Non-AC rooms.'),
                            Text('Occupancy: Double and Triple Sharing.'),
                            Text('Meals: Included 3 times a day.'),
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
    );
  }
}
