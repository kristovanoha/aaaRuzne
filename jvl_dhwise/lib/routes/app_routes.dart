import 'package:flutter/material.dart';
import 'package:jlv_first/presentation/login_screen/login_screen.dart';
import 'package:jlv_first/presentation/test_screen/test_screen.dart';
import 'package:jlv_first/presentation/hlavni_screen/hlavni_screen.dart';
import 'package:jlv_first/presentation/zavady_screen/zavady_screen.dart';
import 'package:jlv_first/presentation/kartavozu_screen/kartavozu_screen.dart';
import 'package:jlv_first/presentation/detailzavady_screen/detailzavady_screen.dart';
import 'package:jlv_first/presentation/seznamzprav_screen/seznamzprav_screen.dart';
import 'package:jlv_first/presentation/detailzpravy_screen/detailzpravy_screen.dart';
import 'package:jlv_first/presentation/detailzpravytwo_screen/detailzpravytwo_screen.dart';
import 'package:jlv_first/presentation/druhy_screen/druhy_screen.dart';
import 'package:jlv_first/presentation/splah_screen/splah_screen.dart';
import 'package:jlv_first/presentation/test1_screen/test1_screen.dart';
import 'package:jlv_first/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String testScreen = '/test_screen';

  static const String hlavniScreen = '/hlavni_screen';

  static const String zavadyScreen = '/zavady_screen';

  static const String kartavozuScreen = '/kartavozu_screen';

  static const String detailzavadyScreen = '/detailzavady_screen';

  static const String seznamzpravScreen = '/seznamzprav_screen';

  static const String detailzpravyScreen = '/detailzpravy_screen';

  static const String detailzpravytwoScreen = '/detailzpravytwo_screen';

  static const String druhyScreen = '/druhy_screen';

  static const String splahScreen = '/splah_screen';

  static const String test1Screen = '/test1_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        testScreen: TestScreen.builder,
        hlavniScreen: HlavniScreen.builder,
        zavadyScreen: ZavadyScreen.builder,
        kartavozuScreen: KartavozuScreen.builder,
        detailzavadyScreen: DetailzavadyScreen.builder,
        seznamzpravScreen: SeznamzpravScreen.builder,
        detailzpravyScreen: DetailzpravyScreen.builder,
        detailzpravytwoScreen: DetailzpravytwoScreen.builder,
        druhyScreen: DruhyScreen.builder,
        splahScreen: SplahScreen.builder,
        test1Screen: Test1Screen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
