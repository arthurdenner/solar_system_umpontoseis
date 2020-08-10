import 'package:flutter/material.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/data.dart';

import 'planet_card.dart';

class Planets extends StatelessWidget {
  const Planets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Planetas',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: 24),
        Container(
          height: 190,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              PlanetCard(
                details: AppPlanets.sun,
              ),
              SizedBox(width: 18),
              PlanetCard(
                details: AppPlanets.mercury,
              ),
              SizedBox(width: 18),
              PlanetCard(
                details: AppPlanets.venus,
              ),
              SizedBox(width: 18),
              PlanetCard(
                details: AppPlanets.earth,
              ),
              SizedBox(width: 18),
              PlanetCard(
                details: AppPlanets.mars,
              ),
              SizedBox(width: 18),
              PlanetCard(
                details: AppPlanets.jupiter,
              ),
              SizedBox(width: 18),
              PlanetCard(
                left: -56.25,
                details: AppPlanets.saturn,
              ),
              SizedBox(width: 18),
              PlanetCard(
                details: AppPlanets.uranus,
              ),
              SizedBox(width: 18),
              PlanetCard(
                details: AppPlanets.neptune,
              ),
              SizedBox(width: 18),
              PlanetCard(
                details: AppPlanets.pluto,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
