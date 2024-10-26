import 'package:flutter/material.dart';
import 'package:bondapp/presentation/StartPage/app_wireframe_screen.dart';
import 'package:bondapp/presentation/step2/app_wireframe_two_screen.dart';
import 'package:bondapp/presentation/step3/app_wireframe_three_screen.dart';
import 'package:bondapp/presentation/step4/app_wireframe_four_screen.dart';
import 'package:bondapp/presentation/step1/app_wireframe_one_screen.dart';
import 'package:bondapp/presentation/lockerid/app_wireframe_six_screen.dart';
import 'package:bondapp/presentation/winner_self/winner_the_great_screen.dart';
import 'package:bondapp/presentation/quiz_self/app_wireframe_fifteen_screen.dart';
import 'package:bondapp/presentation/homepage/app_wireframe_ten_screen.dart';
import 'package:bondapp/presentation/Notifications/app_wireframe_thirteen_screen.dart';
import 'package:bondapp/presentation/Profile/app_wireframe_twelve_screen.dart';
import 'package:bondapp/presentation/pop_up_window_screen/pop_up_window_screen.dart';
import 'package:bondapp/presentation/winner_scifi/winner_the_great_one_screen.dart';
import 'package:bondapp/presentation/quiz_scifi/app_wireframe_fortyone_screen.dart';
import 'package:bondapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bondapp/presentation/start_page.dart';
import 'package:bondapp/presentation/signin_page.dart';
import 'package:bondapp/presentation/signup_page.dart';
import 'package:bondapp/presentation/locker.dart';
import 'package:bondapp/presentation/start_button_self.dart';
import 'package:bondapp/presentation/start_button_scifi/app_wireframe_seven_dialog.dart';

class AppRoutes {
  static const String appWireframeScreen = '/app_wireframe_screen';

  static const String appWireframeTwoScreen = '/app_wireframe_two_screen';

  static const String appWireframeThreeScreen = '/app_wireframe_three_screen';

  static const String appWireframeFourScreen = '/app_wireframe_four_screen';

  static const String appWireframeOneScreen = '/app_wireframe_one_screen';

  static const String appWireframeTwentytwoScreen =
      '/app_wireframe_twentytwo_screen';

  static const String appWireframeFiveScreen = '/app_wireframe_five_screen';

  static const String appWireframeTwentyfiveScreen =
      '/app_wireframe_twentyfive_screen';

  static const String appWireframeSixScreen = '/app_wireframe_six_screen';

  static const String appWireframeEightScreen = '/app_wireframe_eight_screen';

  static const String appWireframeTwentythreeScreen =
      '/app_wireframe_twentythree_screen';

  static const String appWireframeTwentyfourScreen =
      '/app_wireframe_twentyfour_screen';

  static const String appWireframeSixteenScreen =
      '/app_wireframe_sixteen_screen';

  static const String appWireframeTwentysevenScreen =
      '/app_wireframe_twentyseven_screen';

  static const String winnerTheGreatScreen = '/winner_the_great_screen';

  static const String appWireframeFifteenScreen =
      '/app_wireframe_fifteen_screen';

  static const String appWireframeTwentysixScreen =
      '/app_wireframe_twentysix_screen';

  static const String appWireframeTwentyeightScreen =
      '/app_wireframe_twentyeight_screen';

  static const String appWireframeTenScreen = '/app_wireframe_ten_screen';

  static const String appWireframeThirteenScreen =
      '/app_wireframe_thirteen_screen';

  static const String appWireframeTwelveScreen = '/app_wireframe_twelve_screen';

  static const String popUpWindowScreen = '/pop_up_window_screen';

  static const String appWireframeFortytwoScreen =
      '/app_wireframe_fortytwo_screen';

  static const String appWireframeFortyfourScreen =
      '/app_wireframe_fortyfour_screen';

  static const String winnerTheGreatOneScreen = '/winner_the_great_one_screen';

  static const String appWireframeFortyoneScreen =
      '/app_wireframe_fortyone_screen';

  static const String appWireframeFortythreeScreen =
      '/app_wireframe_fortythree_screen';

  static const String appWireframeFortyfiveScreen =
      '/app_wireframe_fortyfive_screen';
  static const String AppWireframeButtonScifi = '/app_wireframe_seven_dialog';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String startPageRoute = '/start_page.dart';
  static const String SigninPage = '/signin_page.dart';
  static const String SignupPage = '/signup_page.dart';
  static const String AppWireframeButtonSelf = '/start_button_self.dart';

  static Map<String, WidgetBuilder> routes = {
    //AppWireframeSevendialog: (context) => AppWireframeSevenDialog(),
    SigninPage: (context) => SignInPage(),
    SignupPage: (context) => SignUpPage(),
    startPageRoute: (context) => StartPage(),
    appWireframeScreen: (context) => AppWireframeScreen(),
    appWireframeTwoScreen: (context) => AppWireframeTwoScreen(),
    appWireframeThreeScreen: (context) => AppWireframeThreeScreen(),
    appWireframeFourScreen: (context) => AppWireframeFourScreen(),
    appWireframeOneScreen: (context) => AppWireframeOneScreen(),
    appWireframeSixScreen: (context) => AppWireframeSixScreen(),
    winnerTheGreatScreen: (context) => WinnerTheGreatScreen(
          selecteddBook: '',
        ),
    appWireframeFifteenScreen: (context) => AppWireframeFifteenScreen(),
    appWireframeTenScreen: (context) => AppWireframeTenScreen(),
    appWireframeThirteenScreen: (context) => AppWireframeThirteenScreen(),
    appWireframeTwelveScreen: (context) => AppWireframeTwelveScreen(),
    popUpWindowScreen: (context) => PopUpWindowScreen(),
    winnerTheGreatOneScreen: (context) => WinnerTheGreatOneScreen(
          selectedBook: '',
        ),
    appWireframeFortyoneScreen: (context) => AppWireframeFortyoneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
