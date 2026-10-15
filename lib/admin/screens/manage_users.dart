import 'package:flutter/material.dart';
import '../widgets/admin_navbar.dart';

class ManageUsers extends StatefulWidget {
  const ManageUsers({super.key});

  @override
  State<ManageUsers> createState() => _ManageUsersState();
}

class _ManageUsersState extends State<ManageUsers> {

  List<Map<String, String>> users = [
    {
      'name': 'Rahul Trivedi',
      'email': 'iamrahultrivedi@gmail.com',
      'phone': '+91 5662187392',
      'gender': 'male',
    },
    {
      'name': 'Sunil Shah',
      'email': 'sunil.shah@gmail.com',
      'phone': '+91 3864187392',
      'gender': 'male',
    },
    {
      'name': 'Rohit Verma',
      'email': 'rohit001@gmail.com',
      'phone': '+91 8664187752',
      'gender': 'male',
    },
    {
      'name': 'Riya Bhatt',
      'email': 'rbhatt01@gmail.com',
      'phone': '+91 5864187392',
      'gender': 'female',
    },
    {
      'name': 'Rakhi Joshi',
      'email': 'josharikhi01@gmail.com',
      'phone': '+91 5682187392',
      'gender': 'female',
    },
    {
      'name': 'Sakshi Jha',
      'email': 'myself.sakshi.jha@gmail.com',
      'phone': '+91 5471857392',
      'gender': 'female',
    },
  ];

  // ==========================================
  // DELETE USER
  // ==========================================

  void deleteUser(int index) {
    setState(() {
      users.removeAt(index);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('User deleted successfully'),
      ),
    );
  }

  // ==========================================
  // BUILD
  // ==========================================

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
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 28,
              ),
            ),

            const Expanded(
              child: Center(
                child: Text(
                  'User Details',
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

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),

        child: ListView.builder(
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 20,
          ),

          itemCount: users.length,

          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                bottom: 14,
              ),

              child: buildUserCard(
                index,
                users[index],
              ),
            );
          },
        ),
      ),

      // ==========================================
      // ADMIN NAVBAR
      // ==========================================

      bottomNavigationBar: const AdminNavBar(
        selectedIndex: 2,
      ),
    );
  }

  // ==========================================
  // USER CARD
  // ==========================================

  Widget buildUserCard(
    int index,
    Map<String, String> user,
  ) {
    bool isMale = user['gender'] == 'male';

    return Container(
      height: 70,

      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 5,
      ),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(25),

        border: Border.all(
          color: const Color(0xFFE0E0E0),
          width: 1.5,
        ),

        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),

      child: Row(
        children: [
          // ==================================
          // PROFILE IMAGE
          // ==================================

          Container(
            width: 58,
            height: 58,

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              color: isMale
                  ? const Color(0xFFF2BD67)
                  : const Color(0xFFC8E986),
            ),

            child: ClipOval(
              child: Icon(
                isMale
                    ? Icons.person
                    : Icons.person_2,
                size: 45,
                color: Colors.black87,
              ),
            ),
          ),

          const SizedBox(width: 8),

          // ==================================
          // USER DETAILS
          // ==================================

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  user['name']!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  user['email']!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),

                Text(
                  user['phone']!,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          // ==================================
          // DELETE BUTTON
          // ==================================

          SizedBox(
            width: 30,
            height: 35,

            child: IconButton(
              padding: EdgeInsets.zero,

              onPressed: () {
                deleteUser(index);
              },

              icon: const Icon(
                Icons.delete,
                color: Colors.red,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}