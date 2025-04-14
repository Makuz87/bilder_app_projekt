import 'package:bilder_app_projekt/pages/about_me_page.dart';
import 'package:bilder_app_projekt/pages/image_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> pages = [
    ImagePage(),
    AboutMePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 232, 245),
      appBar: AppBar(
        title: Text("My first pictureApp"),
        backgroundColor: const Color.fromARGB(255, 72, 171, 253),
      ),
      body: Column(
        children: [
          Expanded(child: pages[_pageIndex]),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _pageIndex,
        onDestinationSelected: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.image), label: "Bilder"),
          NavigationDestination(icon: Icon(Icons.person), label: "über mich"),
        ],
      ),
    );
  }
}
