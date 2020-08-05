import 'package:flutter/material.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Categorias',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CategoryCard(
              gradient: AppColors.gradientBlue,
              icon: 'planets',
              label: 'Planetas',
            ),
            SizedBox(width: 18),
            CategoryCard(
              gradient: AppColors.gradientPink,
              icon: 'asteroids',
              label: 'Asteroides',
            ),
            SizedBox(width: 18),
            CategoryCard(
              gradient: AppColors.gradientCyan,
              icon: 'stars',
              label: 'Estrelas',
            ),
            SizedBox(width: 18),
            CategoryCard(
              gradient: AppColors.gradientYellow,
              icon: 'galaxies',
              label: 'Galáxias',
            ),
          ],
        ),
      ],
    );
  }
}
