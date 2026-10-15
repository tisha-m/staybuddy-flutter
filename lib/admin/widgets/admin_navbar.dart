import 'package:flutter/material.dart';

class AdminNavBar extends StatelessWidget {
  final int selectedIndex;

  const AdminNavBar({super.key, required this.selectedIndex});

  void navigateToPage(BuildContext context, int index) {
    if (index == selectedIndex) {
      return;
    }

    String route;

    switch (index) {
      case 0:
        route = '/admin_home';
        break;

      case 1:
        route = '/admin_manage_stays';
        break;

      case 2:
        route = '/admin_manage_users';
        break;

      case 3:
        route = '/admin_profile';
        break;

      default:
        return;
    }
    Navigator.pushReplacementNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),

        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(context, 0, Icons.home_outlined, 'Home'),
          _navItem(context, 1, Icons.add_circle_outline, 'Stays'),
          _navItem(context, 2, Icons.group_outlined, 'Users'),
          _navItem(context, 3, Icons.person_outline, 'Profile'),
        ],
      ),
    );
  }

  Widget _navItem(
    BuildContext context,
    int index,
    IconData icon,
    String label,
  ) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        navigateToPage(context, index);
      },

      child: Container(
        padding: isSelected
            ? const EdgeInsets.symmetric(horizontal: 22, vertical: 10)
            : const EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF58761) : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,

          children: [
            Icon(
              icon,
              size: 30,
              color: isSelected ? Colors.white : Colors.black,
            ),
            if (isSelected) ...[
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
