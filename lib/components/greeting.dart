import 'package:flutter/material.dart';

//  Got this function to work the first time!
// Ngl, T'was really amusing

String greeting() {
  String timeOfTheDay = 'morning';
  final currentHour = DateTime.now().hour;
  if (currentHour > 17) {
    timeOfTheDay = 'evening';
  } else if (currentHour > 11) {
    timeOfTheDay = 'afternoon';
  } else {
    timeOfTheDay = 'morning';
  }
  return 'Good $timeOfTheDay,';
}

class Greeting extends StatelessWidget {
  const Greeting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      greeting(),
      style: const TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 20.0,
      ),
    );
  }
}
