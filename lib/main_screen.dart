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
                boxShadow: [
                  BoxShadow(
                      // color: Colors.black.withOpacity(0.15),
                      // offset: Offset(0, 4),
                      // blurRadius: 2,
                      ),
                ]),
            child: AppBar(
              title: Text(
                "Bilder App",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Color.fromARGB(255, 4, 46, 99),
                  shadows: [
                    Shadow(
                        offset: Offset(0, 1),
                        color: Colors.grey.withOpacity(0.8))
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        body: Stack(
          children: [
            //Hintergrundbild
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
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment(0, -3),
                    colors: [
                      Color.fromARGB(255, 105, 168, 220), // Blau
                      Color.fromARGB(255, 162, 206, 242), // Blau
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: Offset(0, -4),
                      blurRadius: 16,
                    )
                  ]),
              child: NavigationBar(
                selectedIndex: _pageIndex,
                indicatorColor: const Color.fromARGB(255, 181, 218, 249),
                backgroundColor: Colors.transparent,
                elevation: 0,
                shadowColor: Color.fromARGB(255, 4, 46, 99),
                onDestinationSelected: (value) {
                  setState(() {
                    _pageIndex = value;
                  });
                },
                destinations: [
                  NavigationDestination(
                      icon: Icon(Icons.image), label: "Bilder"),
                  NavigationDestination(
                      icon: Icon(Icons.person), label: "über mich"),
                ],
              ),
            ),
          ],
        ));
  }
}
