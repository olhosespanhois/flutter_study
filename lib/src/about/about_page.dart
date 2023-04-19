import 'package:flutter/material.dart';
import 'package:screen_browser_application/src/util/locator.dart';

import '../widgets/widgets.dart';
import 'widgets/infos.dart';
import 'widgets/name_store.dart';
import 'widgets/tag.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarLdj(
        title: 'Sobre',
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const TagLdj(),
              const NameStore(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    const Flexible(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nome:',
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("OK"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Infos(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarTeste(
        controller: Locator.getController(),
      ),
    );
  }
}
