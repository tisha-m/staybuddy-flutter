import 'package:flutter/material.dart';
import './screens/splash_screen.dart';
import 'user/screens/home_header.dart';
import 'user/screens/search.dart';
import 'user/screens/favorites.dart';
import 'user/screens/profile.dart';

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
        '/home': (context) => const HomeHeader(),
        '/search': (context) => const SearchPage(),
        '/favorites': (context) => const FavoritesPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
