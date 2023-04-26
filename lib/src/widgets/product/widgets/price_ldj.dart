import 'package:flutter/material.dart';

class PriceLdj extends StatelessWidget {
  final double price;
  final double discunt;
  const PriceLdj({
    super.key,
    required this.price,
    required this.discunt,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          pricevalue(discunt, price),
        ],
      ),
    );
  }
}

pricevalue(discunt, price) {
  String money = "R" r"$";
  String value = price.toString();
  String pricevalue = money + value;
  if (discunt != 0) {
    return Text(
      pricevalue,
      style: const TextStyle(
        color: Color.fromRGBO(37, 37, 37, 1),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textDirection: TextDirection.ltr,
    );
  } else {
    return Text(
      pricevalue,
      style: const TextStyle(
        color: Color.fromRGBO(141, 140, 140, 1),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
      ),
      textDirection: TextDirection.ltr,
    );
  }
}
