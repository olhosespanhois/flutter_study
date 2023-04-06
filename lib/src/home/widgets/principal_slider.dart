import 'package:flutter/material.dart';

class PrincipalSlider extends StatelessWidget {
  const PrincipalSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: const [
          Text(
            'Banner',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 5,
            ),
          ),
        ],
      ),
    );
  }
}
