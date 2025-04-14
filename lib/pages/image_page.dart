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
      children: cardView(),
    );
  }

  List<Widget> cardView() {
    List<Widget> myWidget = [];

    for (GalleryItem galleryItem in galleryData) {
      myWidget.add(
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.blue[100],
          elevation: 4,
          child: Column(
            // Muss das hierhin?
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                // Wieso geht hier ein zweites child:?
                child: Image.asset(
                  galleryItem.imagePath,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    galleryItem.imageTitle,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return myWidget;
  }
}
// TODO Implement this library.
