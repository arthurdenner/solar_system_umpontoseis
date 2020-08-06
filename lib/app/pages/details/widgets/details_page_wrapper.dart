import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:solar_system_umpontoseis/app/shared/models/planet_details.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';

class DetailsPageWrapper extends StatefulWidget {
  const DetailsPageWrapper({
    Key key,
    @required this.details,
    @required this.child,
  })  : assert(child != null),
        assert(details != null),
        super(key: key);

  final Widget child;
  final PlanetDetails details;

  @override
  _DetailsPageWrapperState createState() => _DetailsPageWrapperState();
}

class _DetailsPageWrapperState extends State<DetailsPageWrapper> {
  Color _shadow;
  ImageProvider _image;

  @override
  void initState() {
    super.initState();
    _getImageAndShadow();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height,
      child: Column(
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
                      tag: widget.details.name,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: _shadow ?? Colors.transparent,
                              blurRadius: 24.0,
                              offset: Offset(0, 12),
                            ),
                          ],
                        ),
                        child: Image(
                          image: _image,
                          fit: BoxFit.fill,
                          height: _height * .35,
                        ),
                      ),
                    ),
                  ),
                ),
                SafeArea(child: widget.child),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _getImageAndShadow() async {
    setState(() {
      _image = AssetImage(
        widget.details.image,
      );
    });

    try {
      final palette = await PaletteGenerator.fromImageProvider(_image);

      setState(() {
        _shadow = palette.vibrantColor.color.withOpacity(.25);
      });
    } catch (e) {
      print(e);
    }
  }
}
