import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/gradient_mask.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
    @required this.username,
  })  : assert(username != null && username.length > 0),
        super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Olá, ',
                  style: _textTheme.headline4,
                ),
                GradientMask(
                  gradient: AppColors.gradientPink,
                  child: Text(
                    username,
                    style: _textTheme.headline4,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Text(
              'O que você vai aprender hoje?',
              style: _textTheme.bodyText1,
            ),
          ],
        ),
        SvgPicture.asset(
          'assets/icons/settings.svg',
          color: AppColors.brandWhite,
        ),
      ],
    );
  }
}
