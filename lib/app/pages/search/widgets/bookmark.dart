import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/gradient_mask.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({
    Key key,
    @required this.saved,
  })  : assert(saved != null),
        super(key: key);

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
      color: AppColors.brandWhiteOpaque,
      width: 24,
    );
  }
}
