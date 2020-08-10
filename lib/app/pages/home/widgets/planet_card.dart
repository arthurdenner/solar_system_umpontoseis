import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/models/planet_details.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/gradient_mask.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({
    Key key,
    @required this.details,
    this.left = 0,
  })  : assert(details != null),
        super(key: key);

  final PlanetDetails details;
  final double left;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectPlanet,
      behavior: HitTestBehavior.opaque,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: <Widget>[
            Container(
              height: 190,
              width: 140,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.brand,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        details.name,
                        style: Theme.of(context).textTheme.button,
                      ),
                      GradientMask(
                        gradient: AppColors.gradientButton,
                        child: SvgPicture.asset(
                          'assets/icons/forward.svg',
                          width: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: left - 50,
              top: -30,
              child: Hero(
                tag: details.name,
                child: Image.asset(
                  details.image,
                  fit: BoxFit.fill,
                  height: 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectPlanet() {
    Modular.to.pushNamed('/details', arguments: {"details": details});
  }
}
