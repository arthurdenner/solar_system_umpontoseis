import 'package:flutter/material.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/data.dart';

import 'result_planet_card.dart';

class PlanetSuggestions extends StatelessWidget {
  const PlanetSuggestions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Você também pode gostar',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: 24),
        ResultPlanetCard(
          saved: true,
          description: AppPlanets.mars.description,
          label: 'Marte',
          planet: 'mars',
        ),
      ],
    );
  }
}
