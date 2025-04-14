import 'package:bilder_app_projekt/gallery_data.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.fromLTRB(12, 16, 12, 12),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: cardView(context),
    );
  }

  List<Widget> cardView(BuildContext context) {
    List<Widget> myWidget = [];

    for (GalleryItem galleryItem in galleryData) {
      myWidget.add(
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    children: [
                      Image.asset(galleryItem.imagePath),
                      Text(galleryItem.imageTitle),
                      Text(galleryItem.imageDate),
                      Text(galleryItem.imageDescription),
                    ],
                  ),
                );
              },
            );
          },
          child: Card(
            color: Colors.blue[100],
            elevation: 4,
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    galleryItem.imagePath,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  galleryItem.imageTitle,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return myWidget;
  }
}
// TODO Implement this library.
