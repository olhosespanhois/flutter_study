import 'package:flutter/material.dart';

import 'widgets.dart';

class ColumnNameProd extends StatelessWidget {
  const ColumnNameProd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductTitleLdj(
          nameProd: 'Nome do Produto',
          sizeNameProd: 20,
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            PriceLdj(
              price: 500.00,
              offer: true,
            ),
            PriceDiscuntLdj(
              discunt: 10,
              price: 500.00,
              offerDiscunt: true,
            ),
          ],
        ),
      ],
    );
  }
}
