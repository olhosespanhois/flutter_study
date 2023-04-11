import 'package:flutter/material.dart';

class PrincipalSlider extends StatelessWidget {
  final pc = PageController(initialPage: 1);
  PrincipalSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: PageView.builder(
        itemCount: 2,
        pageSnapping: true,
        itemBuilder: (context, index) {
          return Text(
            'Banner $index',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 5,
            ),
          );
        },
      ),
    );
  }
}
