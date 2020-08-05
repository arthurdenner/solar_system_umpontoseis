import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.gradient,
    @required this.icon,
    @required this.label,
  })  : assert(gradient != null),
        assert(icon != null),
        assert(label != null),
        super(key: key);

  final Gradient gradient;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: gradient,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/$icon.svg',
            color: AppColors.brandWhite,
            width: 32,
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
