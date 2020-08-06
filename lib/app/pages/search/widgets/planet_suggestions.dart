import 'package:flutter/material.dart';
import 'package:solar_system_umpontoseis/app/shared/models/planet_details.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/data.dart';

import 'result_planet_card.dart';

class PlanetSuggestions extends StatelessWidget {
  const PlanetSuggestions({
    Key key,
    @required this.selectPlanet,
  })  : assert(selectPlanet != null),
        super(key: key);

  final ValueChanged<PlanetDetails> selectPlanet;

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
          selectPlanet: selectPlanet,
          details: AppPlanets.mars,
          label: 'Marte',
          planet: 'mars',
        ),
      ],
    );
  }
}
