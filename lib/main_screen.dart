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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 134, 192, 239), // Blau
                  Color.fromARGB(255, 171, 214, 249), // Blau
                ],
              ),
            ),
            child: AppBar(
              title: Text("My first picture App"),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              "assets/images/pexels-pixabay-158827.jpg",
              fit: BoxFit.cover,
              color: Colors.blueAccent.withOpacity(0.3),
              colorBlendMode: BlendMode.dstATop,
            )),
            Expanded(child: pages[_pageIndex]),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          indicatorColor: const Color.fromARGB(255, 181, 218, 249),
          backgroundColor: const Color.fromARGB(255, 134, 192, 239),
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
        ));
  }
}
