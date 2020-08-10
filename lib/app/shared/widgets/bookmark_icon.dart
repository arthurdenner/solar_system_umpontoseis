import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/gradient_mask.dart';

class BookmarkIcon extends StatelessWidget {
  const BookmarkIcon({
    Key key,
    @required this.saved,
    this.color,
  })  : assert(saved != null),
        super(key: key);

  final Color color;
  final bool saved;

  @override
  Widget build(BuildContext context) {
    if (saved) {
      return GradientMask(
        gradient: AppColors.gradientButton,
        child: SvgPicture.asset(
          'assets/icons/saved.svg',
          width: 24,
        ),
      );
    }

    return SvgPicture.asset(
      'assets/icons/save.svg',
      color: color ?? AppColors.brandWhiteOpaque,
      width: 24,
    );
  }
}
