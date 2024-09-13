import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:quransinar/constant/colors.dart';
import 'package:quransinar/page/ayat.dart';
import 'package:quransinar/page/doa.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const AyatPage(),
    const DoaPage(),
    const Center(child: Text('Settings Page')),
    const Center(child: Text('Settings Page')),
    const Center(child: Text('Settings Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          Scaffold(backgroundColor: Colors.black, body: _pages[_selectedIndex]),
    );
  }
}
