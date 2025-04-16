import 'package:bilder_app_projekt/gallery_data.dart';
import 'package:bilder_app_projekt/pages/details_page.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPage(item: galleryItem),
              ),
            );
          },
          child: Card(
            color: const Color.fromARGB(255, 175, 208, 235),
            elevation: 6,
            shadowColor: Colors.blue[200],
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    galleryItem.imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  galleryItem.imageTitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 4, 46, 99),
                    shadows: [
                      Shadow(
                          offset: Offset(0, 1),
                          color: Colors.grey.withOpacity(0.8))
                    ],
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
