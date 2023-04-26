import 'package:flutter/material.dart';

class PriceDiscuntLdj extends StatelessWidget {
  final double price;
  final double discunt;
  //final bool offerDiscunt;
  final DateTime? datastart;
  final DateTime? datafinal;
  const PriceDiscuntLdj({
    super.key,
    required this.price,
    required this.discunt,
    //required this.offerDiscunt,
    this.datastart,
    this.datafinal,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          calculeDiscunt(price, discunt, datastart, datafinal, true),
        ],
      ),
    );
  }
}

calculeDiscunt(price, discunt, datastart, datafinal, offerDiscunt) {
  if (datastart && datafinal) {
    var discuntValue = price - ((price * discunt) / 100);
    String money = "R" r"$";
    String value = discuntValue.toString();
    String pricevalue = money + value;
    return pricevalue;
  }
}
