import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key key,
    @required this.hintText,
  })  : assert(hintText != null && hintText.length > 0),
        super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.caption,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.brand,
        prefixIconConstraints: BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 18, 18, 18),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
            color: AppColors.brandWhite,
            width: 16,
          ),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.caption,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
