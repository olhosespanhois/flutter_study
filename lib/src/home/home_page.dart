import 'package:flutter/material.dart';
import 'package:screen_browser_application/src/home/home_controller.dart';
import 'package:screen_browser_application/src/util/locator.dart';

import '../widgets/widgets.dart';
import 'widgets/widgets_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    // controller.getBanner();
  }

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
            children: [
              FutureBuilder(
                future: controller.getBanner(),
                builder: (context, snapschopp) {
                  if (snapschopp.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return PrincipalSlider(imgList: controller.imgList);
                },
              ),
              const CategoryListLdj(),
              const ListProductMoreSale(),
            ],
          )),
      bottomNavigationBar: BottomNavBarTeste(
        controller: Locator.getController(),
      ),
    );
  }
}
