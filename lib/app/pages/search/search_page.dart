import 'package:flutter/material.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/data.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/search_input.dart';

import 'widgets/header.dart';
import 'widgets/result_planet_card.dart';

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
                    description: AppPlanets.neptune.description,
                    label: 'Netuno',
                    planet: 'neptune',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
