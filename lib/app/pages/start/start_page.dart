import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:solar_system_umpontoseis/app/modules/shared/utils/colors.dart';

import 'widgets/start_button.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.centerRight,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/backgrounds/background-solar-system.png',
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            50,
            _height * .35,
            50,
            _height * .15,
          ),
          child: Column(
            children: <Widget>[
              Text(
                'Aperte o cinto',
                style: _textTheme.bodyText1,
              ),
              SizedBox(height: 8),
              Text(
                'Comece sua jornada pelo sistema solar.',
                style: _textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              Expanded(child: Container()),
              Text(
                'Pronto para a decolagem?',
                style: _textTheme.bodyText1,
              ),
              SizedBox(height: 16),
              StartButton(
                label: 'Começar agora',
                onTap: _goToHome,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToHome() {
    Modular.to.pushReplacementNamed('/home');
  }
}
