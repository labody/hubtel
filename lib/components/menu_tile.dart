import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String? image;
  final String? title;

  const MenuTile({
    @required this.image,
    @required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 120.0,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: SizedBox(
              height: 30.0,
              width: 40.0,
              child: Image.asset(
                'assets/images/$image.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 5.0),
            child: Text('$title'),
          ),
        ],
      ),
    );
  }
}
