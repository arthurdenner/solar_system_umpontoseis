import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/gradient_mask.dart';

class ResultPlanetCard extends StatelessWidget {
  const ResultPlanetCard({
    Key key,
    @required this.description,
    @required this.label,
    @required this.planet,
    this.left = 0,
  })  : assert(label != null),
        assert(planet != null),
        super(key: key);

  final String description;
  final String label;
  final double left;
  final String planet;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.brand,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(child: Container()),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            label,
                            style: _textTheme.headline4,
                          ),
                          SvgPicture.asset(
                            'assets/icons/save.svg',
                            color: AppColors.brandWhiteOpaque,
                            width: 24,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        description,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: _textTheme.bodyText2.copyWith(
                          color: AppColors.brandWhiteOpaque,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Text(
                            'Continue lendo',
                            style: _textTheme.bodyText2,
                          ),
                          SizedBox(width: 8),
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
              ],
            ),
          ),
          Positioned(
            left: left - 30,
            top: -30,
            child: Image.asset(
              'assets/planets/$planet.png',
              fit: BoxFit.fill,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
