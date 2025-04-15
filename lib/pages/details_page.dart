import 'package:bilder_app_projekt/gallery_data.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final GalleryItem item;

  const DetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detailansicht"),
        backgroundColor: const Color.fromARGB(255, 134, 192, 239),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              item.imagePath,
            ),
            Text(
              item.imageTitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(item.imageDate),
            Text(item.imageDescription),
          ],
        ),
      ),
    );
  }
}
