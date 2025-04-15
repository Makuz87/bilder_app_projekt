import 'package:bilder_app_projekt/gallery_data.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final GalleryItem item;

  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detailansicht"),
      ),
      body: Column(
        children: [
          Expanded(child: Image.asset(item.imagePath)),
        ],
      ),
    );
  }
}
