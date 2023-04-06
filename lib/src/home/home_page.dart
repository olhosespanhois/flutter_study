import 'package:flutter/material.dart';
import 'package:screen_browser_application/src/util/locator.dart';

import '../widgets/widgets.dart';
import 'widgets/widgets_home.dart';

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
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: const [
              PrincipalSlider(),
              ListProductMoreSale(),
            ],
          )),
      bottomNavigationBar: BottomNavBarTeste(
        controller: Locator.getController(),
      ),
    );
  }
}
