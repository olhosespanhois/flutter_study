import 'package:flutter/material.dart';

import 'widgets.dart';

class ColumnNameProd extends StatelessWidget {
  final String nameProd;
  final double sizeNameProd;
  const ColumnNameProd({
    super.key,
    required this.nameProd,
    required this.sizeNameProd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProductTitleLdj(
          nameProd: 'Nome do Produto',
          sizeNameProd: 20,
        ),
        PriceDiscuntLdj(
          price: 500,
          discunt: 10,
        ),
      ],
    );
  }
}
