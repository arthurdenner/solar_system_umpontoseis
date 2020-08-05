import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/gradient_mask.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({
    Key key,
    @required this.label,
    @required this.planet,
  })  : assert(label != null),
        assert(planet != null),
        super(key: key);

  final String label;
  final String planet;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        children: <Widget>[
          Container(
            height: 190,
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
                      label,
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: AppColors.brandWhite,
                          ),
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
            left: -50,
            top: -30,
            child: SvgPicture.asset(
              'assets/planets/$planet.png',
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
