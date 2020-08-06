import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/data.dart';
import 'package:solar_system_umpontoseis/app/shared/widgets/bookmark_icon.dart';

import 'widgets/details_header.dart';
import 'widgets/details_page_wrapper.dart';

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
      body: DetailsPageWrapper(
        details: details,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchHeader(),
              SizedBox(height: _height * .32),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        details.description,
                        style: _textTheme.bodyText1.copyWith(
                          color: AppColors.brand.withOpacity(.75),
                        ),
                      ),
                      SizedBox(height: 40),
                      ExpansionTile(
                        trailing: Container(width: 10),
                        title: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              'assets/icons/down.svg',
                              color: AppColors.brand,
                              width: 16,
                            ),
                            SizedBox(width: 16),
                            Text(
                              'Introdução',
                              style: _textTheme.button.copyWith(
                                color: AppColors.brand,
                              ),
                            ),
                          ],
                        ),
                        children: <Widget>[
                          Text(
                            'Lorem ipsum',
                            style: TextStyle(color: Colors.red),
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
      ),
    );
  }
}
