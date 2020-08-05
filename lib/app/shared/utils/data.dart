import 'package:flutter/foundation.dart';

class PlanetInformation {
  final String description;

  PlanetInformation({@required this.description});
}

class AppPlanets {
  static PlanetInformation mars = PlanetInformation(
    description: 'Marte é o quarto planeta a partir do Sol, '
        'o segundo menor do Sistema Solar. '
        'Batizado em homenagem ao deus romano da guerra, '
        'muitas vezes é descrito como o "Planeta Vermelho", '
        'porque o óxido de ferro predominante em sua superfície '
        'lhe dá uma aparência avermelhada.',
  );
  static PlanetInformation neptune = PlanetInformation(
    description: 'Netuno é o oitavo planeta do Sistema Solar, '
        'o último a partir do Sol desde a reclassificação de Plutão '
        'para a categoria de planeta anão, em 2006. '
        'Pertencente ao grupo dos gigantes gasosos, '
        'possui um tamanho ligeiramente menor que o de Urano, '
        'mas maior massa, equivalente a 17 massas terrestres. '
        'Netuno orbita o Sol a uma distância média de 30,1 unidades astronômicas.',
  );
}
