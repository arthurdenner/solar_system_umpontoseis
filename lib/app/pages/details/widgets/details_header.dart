import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'header',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: Modular.to.pop,
            child: SvgPicture.asset(
              'assets/icons/back.svg',
              color: AppColors.brandWhite,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/settings.svg',
            color: AppColors.brandWhite,
          ),
        ],
      ),
    );
  }
}
