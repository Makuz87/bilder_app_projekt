import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 16, 12, 12),
          child: Column(
            spacing: 16,
            children: [
              CircleAvatar(
                radius: 130,
                backgroundImage: AssetImage("assets/images/kaya.jpeg"),
              ),
              SizedBox(height: 8),
              Text(
                "Kaya Ranji",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                "Photograph",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
            ],
          ),
        ),
      ),
    );
  }
}
