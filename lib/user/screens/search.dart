import 'package:flutter/material.dart';
import '../widgets/user_navbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Search',
          style: TextStyle(
            color: Color(0xFF356B48),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: const Center(
        child: Text('Search Page', style: TextStyle(fontSize: 25)),
      ),

      bottomNavigationBar: const UserNavBar(selectedIndex: 1),
    );
  }
}
