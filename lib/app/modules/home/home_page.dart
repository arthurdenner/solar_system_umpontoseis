import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/search_input.dart';

import 'home_controller.dart';
import 'widgets/categories.dart';
import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
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
                  SearchInput(
                    hintText: 'Procure planetas, asteroides, estrelas...',
                  ),
                  SizedBox(height: 48),
                  Categories(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
