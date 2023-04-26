import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class ProductListLdj extends StatelessWidget {
  const ProductListLdj({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const ImageProdLdj(
            imgWidth: 200,
            imgUrl: 'assets/images/tag.png',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
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
                      discunt: 10,
                    ),
                    PriceDiscuntLdj(
                      discunt: 10,
                      price: 500.00,
                      //offerDiscunt: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
