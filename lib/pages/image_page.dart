import 'package:bilder_app_projekt/gallery_data.dart';
import 'package:bilder_app_projekt/pages/detail_pages.dart';
import 'package:bilder_app_projekt/pages/details_page.dart';
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
          splashColor: Colors.red,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPage(item: galleryItem),
              ),
            );
          },
          child: Card(
            color: Colors.blue[100],
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
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
