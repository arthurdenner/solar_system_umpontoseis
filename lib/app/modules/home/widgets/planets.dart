import 'package:flutter/material.dart';

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
                label: 'Sol',
                planet: 'sun',
              ),
              SizedBox(width: 18),
              PlanetCard(
                label: 'Mercúrio',
                planet: 'mercury',
              ),
              SizedBox(width: 18),
              PlanetCard(
                label: 'Vênus',
                planet: 'venus',
              ),
              SizedBox(width: 18),
              PlanetCard(
                label: 'Terra',
                planet: 'earth',
              ),
              SizedBox(width: 18),
              PlanetCard(
                label: 'Marte',
                planet: 'mars',
              ),
              SizedBox(width: 18),
              PlanetCard(
                label: 'Júpiter',
                planet: 'jupiter',
              ),
              SizedBox(width: 18),
              PlanetCard(
                left: -56.25,
                label: 'Saturno',
                planet: 'saturn',
              ),
              SizedBox(width: 18),
              PlanetCard(
                label: 'Urano',
                planet: 'uranus',
              ),
              SizedBox(width: 18),
              PlanetCard(
                label: 'Netuno',
                planet: 'neptune',
              ),
              SizedBox(width: 18),
              PlanetCard(
                label: 'Plutão',
                planet: 'pluto',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
