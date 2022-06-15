import 'package:flutter/material.dart';
import 'package:hubtel/components/menu_tile.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FirstRow(),
        SizedBox(height: 10.0),
        SecondRow(),
        SizedBox(height: 10.0),
        ThirdRow(),
      ],
    );
  }
}

class ThirdRow extends StatelessWidget {
  const ThirdRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: MenuTile(image: 'mail', title: 'SMS & Money'),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: MenuTile(image: 'request_money', title: 'Request Money'),
        ),
      ],
    );
  }
}

class SecondRow extends StatelessWidget {
  const SecondRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        MenuTile(image: 'dollar', title: 'Send Money'),
        MenuTile(image: 'top_up', title: 'Top Up'),
        MenuTile(image: 'pay_bills', title: 'Pay Bills'),
      ],
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        MenuTile(image: 'orange_paper', title: 'Groceries'),
        MenuTile(image: 'pizza', title: 'Food'),
        MenuTile(image: 'shop_1', title: 'Shops'),
      ],
    );
  }
}
