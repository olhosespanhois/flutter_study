import 'package:flutter/material.dart';
import 'package:screen_browser_application/src/widgets/widgets.dart';

class ListProductMoreSale extends StatelessWidget {
  const ListProductMoreSale({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: const [
          Text(
            'Mais Vendidos',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 5,
            ),
          ),
          ProductListLdj(),
        ],
      ),
    );
  }
}
