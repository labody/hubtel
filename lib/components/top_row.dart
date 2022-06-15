import 'package:flutter/material.dart';

// Forgive my naming of these rows

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade50,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            LeftRow(),
            RightRow(),
          ],
        ),
      ),
    );
  }
}

class RightRow extends StatelessWidget {
  const RightRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: SizedBox(
            height: 40.0,
            width: 40.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/wallet2.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        const Text(
          'Cards & Wallets',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}

class LeftRow extends StatelessWidget {
  const LeftRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 7.0),
            Text(
              'Hubtel Balance',
              style: TextStyle(),
            ),
            SizedBox(height: 3.0),
            Text(
              'GHS 0.00',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 17.0),
          ],
        ),
        const SizedBox(width: 10.0),
        Material(
          shape: const CircleBorder(),
          child: Icon(
            Icons.add,
            color: Colors.deepPurple.shade900,
          ),
        ),
      ],
    );
  }
}
