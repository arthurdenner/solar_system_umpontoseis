import 'package:solar_system_umpontoseis/app/shared/models/planet_details.dart';

class AppPlanets {
  static PlanetDetails mars = PlanetDetails(
    saved: true,
    image: 'assets/planets/mars.png',
    name: 'Marte',
    description: 'Marte é o quarto planeta a partir do Sol, '
        'o segundo menor do Sistema Solar. '
        'Batizado em homenagem ao deus romano da guerra, '
        'muitas vezes é descrito como o "Planeta Vermelho", '
        'porque o óxido de ferro predominante em sua superfície '
        'lhe dá uma aparência avermelhada.',
  );
  static PlanetDetails neptune = PlanetDetails(
    saved: false,
    image: 'assets/planets/neptune.png',
    name: 'Netuno',
    description: 'Netuno é o oitavo planeta do Sistema Solar, '
        'o último a partir do Sol desde a reclassificação de Plutão '
        'para a categoria de planeta anão, em 2006. '
        'Pertencente ao grupo dos gigantes gasosos, '
        'possui um tamanho ligeiramente menor que o de Urano, '
        'mas maior massa, equivalente a 17 massas terrestres. '
        'Netuno orbita o Sol a uma distância média de 30,1 unidades astronômicas.',
  );
  static PlanetDetails sun = PlanetDetails(
    saved: false,
    image: 'assets/planets/sun.png',
    name: 'Sol',
    description:
        'O Sol (do latim sol, solis) é a estrela central do Sistema Solar. '
        'Todos os outros corpos do Sistema Solar, como planetas, planetas anões, '
        'asteroides, cometas e poeira, bem como todos os satélites associados '
        'a estes corpos, giram ao seu redor.',
  );
  static PlanetDetails saturn = PlanetDetails(
    saved: false,
    image: 'assets/planets/saturn.png',
    name: 'Saturno',
    description: 'Saturno é o sexto planeta a partir do Sol '
        'e o segundo maior do Sistema Solar atrás de Júpiter. '
        'Pertencente ao grupo dos gigantes gasosos, possui cerca de 95 massas '
        'terrestres e orbita a uma distância média de 9,5 unidades astronômicas.',
  );
  static PlanetDetails jupiter = PlanetDetails(
    saved: false,
    image: 'assets/planets/jupiter.png',
    name: 'Júpiter',
    description: 'Júpiter é o maior planeta do Sistema Solar, '
        'tanto em diâmetro quanto em massa, e é o quinto mais próximo do Sol. '
        'Possui menos de um milésimo da massa solar, contudo tem 2,5 vezes '
        'a massa de todos os outros planetas em conjunto.',
  );
  static PlanetDetails mercury = PlanetDetails(
    saved: false,
    image: 'assets/planets/mercury.png',
    name: 'Mercúrio',
    description: 'Mercúrio é o menor e mais interno planeta do Sistema Solar, '
        'orbitando o Sol a cada 87,969 dias terrestres. A sua órbita tem a maior '
        'excentricidade e o seu eixo apresenta a menor inclinação em relação '
        'ao plano da órbita dentre todos os planetas do Sistema Solar.',
  );
  static PlanetDetails venus = PlanetDetails(
    saved: false,
    image: 'assets/planets/venus.png',
    name: 'Vênus',
    description: 'Vénus ou Vênus é o segundo planeta do Sistema Solar '
        'em ordem de distância a partir do Sol, orbitando-o a cada 224,7 dias. '
        'Recebeu seu nome em homenagem à deusa romana do amor e da beleza Vénus, '
        'equivalente a Afrodite.',
  );
  static PlanetDetails earth = PlanetDetails(
    saved: false,
    image: 'assets/planets/earth.png',
    name: 'Terra',
    description: 'A Terra é o terceiro planeta mais próximo do Sol, '
        'o mais denso e o quinto maior dos oito planetas do Sistema Solar. '
        'É também o maior dos quatro planetas telúricos. '
        'É por vezes designada como Mundo ou Planeta Azul.',
  );
  static PlanetDetails uranus = PlanetDetails(
    saved: false,
    image: 'assets/planets/uranus.png',
    name: 'Urano',
    description: 'Urano é o sétimo planeta a partir do Sol, o terceiro maior '
        'e o quarto mais massivo dos oito planetas do Sistema Solar. '
        'Foi nomeado em homenagem ao deus grego do céu, Urano, '
        'o pai de Cronos e o avô de Zeus.',
  );
  static PlanetDetails pluto = PlanetDetails(
    saved: false,
    image: 'assets/planets/pluto.png',
    name: 'Plutão',
    description: 'Plutão, formalmente designado 134340 Plutão, '
        'é um planeta anão do Sistema Solar e o nono maior '
        'e décimo mais massivo objeto observado diretamente orbitando o Sol.',
  );
}
