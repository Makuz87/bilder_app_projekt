import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Image.asset("assets/images/basketball_1.jpeg"),
        Image.asset("assets/images/basketball_2.jpeg"),
        Image.asset("assets/images/bike.jpeg"),
        Image.asset("assets/images/kaya.jpeg"),
        Image.asset("assets/images/running.jpeg"),
        Image.asset("assets/images/soccer.jpeg"),
        Image.asset("assets/images/ski.jpeg"),
        Image.asset("assets/images/tennis_1.jpeg"),
        Image.asset("assets/images/tennis_2.jpeg"),
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
