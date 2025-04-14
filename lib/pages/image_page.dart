import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        Image.asset(
          "assets/images/basketball_1.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/basketball_2.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/tennis_2.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/kaya.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/soccer.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/ski.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/tennis_1.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/bike.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/running.jpeg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ],
    );

    // Column(
    //   children: [
    //     Image.asset("assets/images/basketball_1.jpeg"),
    //     Image.asset("assets/images/basketball_2.jpeg"),
    //   ],
    // );

    // ListView(
    //   children: [Image.asset("assets/images/basketball_1.jpeg")],
    // );
  }
}
// TODO Implement this library.
