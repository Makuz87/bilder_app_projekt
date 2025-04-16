import 'package:bilder_app_projekt/gallery_data.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final GalleryItem item;

  const DetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 232, 245),
      appBar: AppBar(
        title: Text("Detailansicht"),
        backgroundColor: const Color.fromARGB(255, 134, 192, 239),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 8,
          children: [
            Image.asset(
              item.imagePath,
            ),
            Text(
              item.imageTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              item.imageDate,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 8, 8, 12),
              child: Card(
                elevation: 4,
                shadowColor: Colors.blue,
                color: const Color.fromARGB(255, 134, 192, 239),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 28, 28, 24),
                  child: Text(item.imageDescription),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
