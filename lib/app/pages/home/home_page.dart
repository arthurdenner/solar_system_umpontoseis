import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/search_input.dart';

import 'widgets/categories.dart';
import 'widgets/home_header.dart';
import 'widgets/planets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.centerRight,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/backgrounds/background-constellation.png',
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 32,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  HomeHeader(username: 'Arthur Denner'),
                  SizedBox(height: 56),
                  GestureDetector(
                    onTap: _goToSearch,
                    behavior: HitTestBehavior.opaque,
                    child: IgnorePointer(
                      ignoring: true,
                      child: SearchInput(
                        hintText: 'Procure planetas, asteroides, estrelas...',
                      ),
                    ),
                  ),
                  SizedBox(height: 48),
                  Categories(),
                  SizedBox(height: 48),
                  Planets(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _goToSearch() {
    Modular.to.pushNamed('/search');
  }
}
