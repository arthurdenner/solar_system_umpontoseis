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
    final _baseStyle = Theme.of(context).textTheme.bodyText2;
    final _textStyle = _baseStyle.copyWith(
      color: AppColors.brandWhiteOpaque,
    );

    return TextField(
      style: _textStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.brand,
        prefixIconConstraints: BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 17, 18, 17),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
            color: AppColors.brandWhite,
            width: 16,
          ),
        ),
        hintText: hintText,
        hintStyle: _textStyle,
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
