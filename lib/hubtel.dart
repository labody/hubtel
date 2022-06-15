import 'package:flutter/material.dart';
import 'package:hubtel/screens/homepage.dart';

class Hubtel extends StatefulWidget {
  const Hubtel({Key? key}) : super(key: key);

  @override
  State<Hubtel> createState() => _HubtelState();
}

class _HubtelState extends State<Hubtel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Arial'),
      home: const HomePage(),
    );
  }
}
