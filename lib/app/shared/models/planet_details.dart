import 'package:flutter/foundation.dart';

class PlanetDetails {
  final String description;
  final String image;
  final String name;
  final bool saved;

  PlanetDetails({
    @required this.description,
    @required this.image,
    @required this.name,
    @required this.saved,
  });
}
