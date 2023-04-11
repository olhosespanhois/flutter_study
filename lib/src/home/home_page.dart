import 'package:flutter/material.dart';
import 'package:screen_browser_application/src/util/locator.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarLdj(
        title: 'Lodjinha',
        centerTitle: true,
        styledTitle: true,
      ),
      body: PageView.builder(
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
      bottomNavigationBar: BottomNavBarTeste(
        controller: Locator.getController(),
      ),
    );
  }
}
