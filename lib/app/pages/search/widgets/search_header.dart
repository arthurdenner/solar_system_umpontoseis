import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Hero(
          tag: 'header',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/back.svg',
                color: AppColors.brandWhite,
              ),
              SvgPicture.asset(
                'assets/icons/settings.svg',
                color: AppColors.brandWhite,
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        Text(
          'Resultados da busca',
          style: _textTheme.headline4,
        ),
      ],
    );
  }
}
