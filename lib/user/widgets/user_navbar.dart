import 'package:flutter/material.dart';

class UserNavBar extends StatelessWidget {
  final int selectedIndex;

  const UserNavBar({
    super.key,
    required this.selectedIndex,
  });

  void navigateToPage(BuildContext context, int index) {
    if (index == selectedIndex) {
      return;
    }

    String route;

    switch (index) {
      case 0:
        route = '/home';
        break;

      case 1:
        route = '/search';
        break;

      case 2:
        route = '/favorites';
        break;

      case 3:
        route = '/profile';
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
          _navItem(
            context,
            0,
            Icons.home_outlined,
            'Home',
          ),

          _navItem(
            context,
            1,
            Icons.search,
            'Search',
          ),

          _navItem(
            context,
            2,
            Icons.favorite_border,
            'Favorites',
          ),

          _navItem(
            context,
            3,
            Icons.person_outline,
            'Profile',
          ),
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
            ? const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 10,
              )
            : const EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFF356B48)
              : Colors.transparent,

          borderRadius: BorderRadius.circular(30),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 30,
              color: isSelected
                  ? Colors.white
                  : Colors.black,
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