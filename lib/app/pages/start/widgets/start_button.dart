import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/modules/shared/utils/colors.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key key,
    @required this.label,
    @required this.onTap,
  })  : assert(label != null),
        assert(onTap != null),
        super(key: key);

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: AppColors.gradientButton,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              label,
              style: Theme.of(context).textTheme.button,
            ),
            SizedBox(width: 16),
            SvgPicture.asset(
              'assets/icons/forward.svg',
              color: AppColors.brandWhite,
              width: 16,
            ),
          ],
        ),
      ),
    );
  }
}
