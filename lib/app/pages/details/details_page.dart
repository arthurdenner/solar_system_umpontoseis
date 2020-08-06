import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/data.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/bookmark_icon.dart';

import 'widgets/details_header.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key key,
    @required this.details,
  })  : assert(details != null),
        super(key: key);

  final PlanetDetails details;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    color: AppColors.brandWhite,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: _height * .3 + kToolbarHeight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/backgrounds/background-constellation.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: kToolbarHeight,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Hero(
                      tag: details.name,
                      child: Image.asset(
                        details.image,
                        fit: BoxFit.fill,
                        height: _height * .35,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SearchHeader(),
                        SizedBox(height: _height * .35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              details.name,
                              style: _textTheme.headline4.copyWith(
                                color: AppColors.brand,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                BookmarkIcon(
                                  color: AppColors.brand,
                                  saved: details.saved,
                                ),
                                SizedBox(width: 16),
                                SvgPicture.asset(
                                  'assets/icons/share.svg',
                                  color: AppColors.brand,
                                  width: 24,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
