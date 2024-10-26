import 'package:bondapp/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe TwentyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwentytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe TwentyFive",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwentyfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe TwentyThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwentythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe TwentyFour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwentyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe TwentySeven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwentysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "winner  the great",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.winnerTheGreatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe TwentySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwentysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe TwentyEight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwentyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pop up window",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.popUpWindowScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe FortyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeFortytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe FortyFour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeFortyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "winner  the great One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.winnerTheGreatOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe FortyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeFortyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe FortyThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeFortythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "app wireframe FortyFive",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appWireframeFortyfiveScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
