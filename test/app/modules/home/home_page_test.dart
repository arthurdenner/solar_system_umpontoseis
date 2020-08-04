import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:solar_system_umpontoseis/app/modules/home/home_module.dart';

import 'package:solar_system_umpontoseis/app/modules/home/home_page.dart';

main() {
  initModule(HomeModule());

  testWidgets('HomePage displays app title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));
    final titleFinder = find.text('Solar System');

    expect(titleFinder, findsOneWidget);
  });
}
