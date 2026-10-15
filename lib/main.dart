import 'package:flutter/material.dart';
import './screens/splash_screen.dart';
//user screens
import 'user/screens/home_header.dart';
import 'user/screens/search.dart';
import 'user/screens/favorites.dart';
import 'user/screens/profile.dart';
//admin screens
import 'admin/screens/home_screen.dart';
import 'admin/screens/manage_stays.dart';
import 'admin/screens/manage_users.dart';
import 'admin/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StayBuddy',
      home: const SplashScreen(),
      routes: {
        //user
        '/home': (context) => const HomeHeader(),
        '/search': (context) => const SearchPage(),
        '/favorites': (context) => const FavoritesPage(),
        '/profile': (context) => const ProfilePage(),
        //admin
        '/admin_home': (context) => const AdminHome(),
        '/admin_manage_stays': (context) => const ManageStays(),
        '/admin_manage_users': (context) => const ManageUsers(),
        '/admin_profile': (context) => const AdminProfile(),
      },
    );
  }
}
