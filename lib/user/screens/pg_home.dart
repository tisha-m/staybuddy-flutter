import 'package:flutter/material.dart';
import 'package:staybuddy/resources/imagestring.dart';

class PGHome extends StatefulWidget {
  const PGHome({super.key});

  @override
  State<PGHome> createState() => _PGHomeState();
}

class _PGHomeState extends State<PGHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Recommended PG',
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
                            girls_pg[5],
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(
                            width: 100,
                            child: Text(
                              'Raadhe Meera Girls PG',
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
                              'Gondal Road, Hanuman Mandir, Gayatri Main Road, Bhaktinagar Circle, Rajkot-360002, Gujarat',
                            ),
                            Text('Contact Number: +91 737 73791.'),
                            Text('Type of Room: Only Non-AC rooms.'),
                            Text(
                              'Occupancy: Single, Double, Triple, Four, Five Sharing.',
                            ),
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
                            boys_pg[3],
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(
                            width: 100,
                            child: Text(
                              "The Penthouse PG",
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
                              'Harihar Society, Amin Marg, Kotecha Nagar, Rajkot, Gujarat 360001.',
                            ),
                            Text('Contact Number: +91 84600 42602.'),
                            Text('Type of Room: Both AC and Non-AC rooms.'),
                            Text(
                              'Occupancy: Single, Double and Triple Sharing.',
                            ),
                            Text('Meals: Not Included.'),
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
                            boys_pg[2],
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(
                            width: 100,
                            child: Text(
                              'Shree Balaji PG and Residency',
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
                              '10 Corner, Jalaram Plot No. 2, Street No. 3, Near Sister Nivedita Institute, University Road, Jalaram Nagar, Rajkot, Gujarat 360005.',
                            ),
                            Text('Contact Number: +91 99984 19866.'),
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
            ],
          ),
        ),
      ],
    );
  }
}
