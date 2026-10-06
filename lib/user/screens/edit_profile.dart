import 'package:flutter/material.dart';
import '../widgets/user_navbar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController nameController = TextEditingController(
    text: 'Darshan Parmar',
  );

  final TextEditingController emailController = TextEditingController(
    text: 'dparmar259@rku.ac.in',
  );

  final TextEditingController mobileController = TextEditingController(
    text: '+91 50137 46913',
  );

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  void saveChanges() {
    // Later you can save these values to your database.

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Profile updated successfully!')),
    );
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
                  'Edit your Profile',
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
        padding: const EdgeInsets.symmetric(horizontal: 30),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),

            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 88,
                    height: 88,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,

                      border: Border.all(
                        color: const Color(0xFFE0E0E0),
                        width: 2,
                      ),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),

                    child: const Icon(
                      Icons.add_a_photo_outlined,
                      size: 48,
                      color: Colors.black,
                    ),
                  ),

                  // Upload icon
                  Positioned(
                    right: 5,
                    bottom: -2,
                    child: Icon(
                      Icons.file_upload_outlined,
                      color: const Color(0xFF428D52),
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Full Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 7),
            profileTextField(controller: nameController),
            const SizedBox(height: 25),

            const Text(
              'Email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 7),

            profileTextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 25),

            const Text(
              'Mobile No.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 7),

            profileTextField(
              controller: mobileController,
              keyboardType: TextInputType.phone,
            ),

            const SizedBox(height: 77),

            SizedBox(
              width: double.infinity,
              height: 58,

              child: ElevatedButton(
                onPressed: saveChanges,

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF428D52),
                  foregroundColor: Colors.white,

                  elevation: 0,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                child: const Text(
                  'Save Changes',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),

      bottomNavigationBar: const UserNavBar(selectedIndex: 3),
    );
  }

  Widget profileTextField({
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return SizedBox(
      height: 60,

      child: TextField(
        controller: controller,
        keyboardType: keyboardType,

        style: const TextStyle(fontSize: 16),

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),

          filled: true,
          fillColor: Colors.white,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),

            borderSide: const BorderSide(color: Color(0xFFE0E0E0), width: 1.5),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),

            borderSide: const BorderSide(color: Color(0xFF428D52), width: 2),
          ),

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
