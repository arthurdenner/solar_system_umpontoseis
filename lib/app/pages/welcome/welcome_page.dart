import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';

import 'widgets/start_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

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
        child: SafeArea(
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
                  style: _textTheme.bodyText1.copyWith(
                    color: AppColors.brandWhiteOpaque,
                  ),
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
      ),
    );
  }

  void _goToHome() {
    Modular.to.pushReplacementNamed('/home');
  }
}
