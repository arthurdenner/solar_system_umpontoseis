import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/data.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/search_input.dart';

import 'widgets/planet_suggestions.dart';
import 'widgets/result_planet_card.dart';
import 'widgets/search_header.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

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
                  SearchHeader(),
                  SizedBox(height: 56),
                  SearchInput(
                    hintText: 'Netuno',
                  ),
                  SizedBox(height: 40),
                  ResultPlanetCard(
                    selectPlanet: _selectPlanet,
                    details: AppPlanets.neptune,
                    label: 'Netuno',
                    planet: 'neptune',
                  ),
                  SizedBox(height: 40),
                  PlanetSuggestions(
                    selectPlanet: _selectPlanet,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _selectPlanet(PlanetDetails details) {
    Modular.to.pushNamed('/details', arguments: {"details": details});
  }
}
