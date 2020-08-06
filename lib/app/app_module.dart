import 'package:solar_system_umpontoseis/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:solar_system_umpontoseis/app/app_widget.dart';
import 'package:solar_system_umpontoseis/app/pages/details/details_page.dart';
import 'package:solar_system_umpontoseis/app/pages/home/home_page.dart';
import 'package:solar_system_umpontoseis/app/pages/search/search_page.dart';
import 'package:solar_system_umpontoseis/app/pages/welcome/welcome_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/welcome', child: (_, args) => WelcomePage()),
        Router('/home', child: (_, args) => HomePage()),
        Router('/search', child: (_, args) => SearchPage()),
        Router(
          '/details',
          child: (_, args) => DetailsPage(
            details: args.data['details'],
          ),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
