import 'package:flutter/material.dart';
import '../widgets/admin_navbar.dart';
import '../../resources/stay.dart';

class AddStay extends StatefulWidget {
  const AddStay({super.key});

  @override
  State<AddStay> createState() => _AddStayState();
}

class _AddStayState extends State<AddStay> {
  // Category dropdown
  String selectedCategory = 'Category of stay';

  // Accommodation type
  String accommodationType = 'Male';

  // Text controllers
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final contactController = TextEditingController();
  final occupancyController = TextEditingController();
  final roomTypeController = TextEditingController();
  final imageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    contactController.dispose();
    occupancyController.dispose();
    roomTypeController.dispose();
    imageController.dispose();

    super.dispose();
  }

  // ==========================================
  // CONFIRM
  // ==========================================

  void confirmStay() {
    if (nameController.text.isEmpty ||
        addressController.text.isEmpty ||
        contactController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill the required fields.')),
      );

      return;
    }

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Stay added successfully!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ==========================================
      // APP BAR
      // ==========================================
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
                  'Stay Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
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

      // ==========================================
      // BODY
      // ==========================================
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: Column(
          children: [
            const SizedBox(height: 100),

            // ======================================
            // FORM CONTAINER
            // ======================================
            Container(
              width: double.infinity,

              padding: const EdgeInsets.fromLTRB(8, 12, 8, 10),

              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(30),

                border: Border.all(color: const Color(0xFFE0E0E0), width: 1.5),

                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // ==================================
                  // TITLE
                  // ==================================
                  const Center(
                    child: Text(
                      'Add details of new stay',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  // ==================================
                  // CATEGORY
                  // ==================================
                  const Text(
                    'Category',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 2),

                  Container(
                    height: 27,

                    padding: const EdgeInsets.symmetric(horizontal: 5),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),

                      border: Border.all(color: Colors.grey.shade400),
                    ),

                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedCategory,

                        isDense: true,

                        icon: const Icon(Icons.keyboard_arrow_down, size: 18),

                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                        ),

                        items: const [
                          DropdownMenuItem(
                            value: 'Category of stay',
                            child: Text('Category of stay'),
                          ),
                          DropdownMenuItem(value: 'PG', child: Text('PG')),
                          DropdownMenuItem(
                            value: 'Hostel',
                            child: Text('Hostel'),
                          ),
                          DropdownMenuItem(value: 'Room', child: Text('Room')),
                        ],

                        onChanged: (value) {
                          setState(() {
                            selectedCategory = value!;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 3),

                  // ==================================
                  // NAME
                  // ==================================
                  const Text(
                    'Name',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),

                  smallTextField(controller: nameController),

                  // ==================================
                  // ADDRESS
                  // ==================================
                  const Text(
                    'Address',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),

                  smallTextField(controller: addressController),

                  // ==================================
                  // CONTACT + OCCUPANCY
                  // ==================================
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            const Text(
                              'Contact',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            smallTextField(
                              controller: contactController,
                              keyboardType: TextInputType.phone,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            const Text(
                              'Occupancy',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            smallTextField(controller: occupancyController),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // ==================================
                  // ROOM TYPE + ACCOMMODATION TYPE
                  // ==================================
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            const Text(
                              'Room Type',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            smallTextField(controller: roomTypeController),
                          ],
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            const Text(
                              'Accommodation Type',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            accommodationRadio('Male'),

                            accommodationRadio('Female'),

                            accommodationRadio('Co-Living'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // ==================================
                  // ADD IMAGE
                  // ==================================
                  const Text(
                    'Add Image',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),

                  smallTextField(controller: imageController),

                  const SizedBox(height: 15),

                  // ==================================
                  // CONFIRM BUTTON
                  // ==================================
                  Center(
                    child: SizedBox(
                      height: 28,

                      child: ElevatedButton(
                        onPressed: confirmStay,

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF58761),

                          foregroundColor: Colors.black,

                          padding: const EdgeInsets.symmetric(horizontal: 15),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),

                          elevation: 0,
                        ),

                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),

      // ==========================================
      // ADMIN NAVBAR
      // ==========================================
      bottomNavigationBar: const AdminNavBar(selectedIndex: 1),
    );
  }

  // ==========================================
  // TEXT FIELD
  // ==========================================

  Widget smallTextField({
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return SizedBox(
      height: 28,

      child: TextField(
        controller: controller,
        keyboardType: keyboardType,

        style: const TextStyle(fontSize: 12),

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 0,
          ),

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Color(0xFFF58761)),
          ),
        ),
      ),
    );
  }

  // ==========================================
  // ACCOMMODATION RADIO
  // ==========================================

  Widget accommodationRadio(String value) {
    return SizedBox(
      height: 22,

      child: Row(
        children: [
          SizedBox(
            width: 22,
            height: 22,

            child: Radio<String>(
              value: value,
              groupValue: accommodationType,

              activeColor: const Color(0xFFF58761),

              onChanged: (newValue) {
                setState(() {
                  accommodationType = newValue!;
                });
              },
            ),
          ),

          Text(value, style: const TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}
