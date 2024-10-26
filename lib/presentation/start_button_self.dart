import 'package:bondapp/core/app_export.dart';
import 'package:flutter/material.dart';

class AppWireframeButtonSelf extends StatelessWidget {
  const AppWireframeButtonSelf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapThirtyFour(context);
        },
        child: Container(
            width: 204.h,
            padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 89.v),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder102),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8.v),
                  Text("Start the quiz!",
                      style: CustomTextStyles.titleSmallBlack)
                ])));
  }

  /// Navigates to the appWireframeEightScreen when the action is triggered.
  onTapThirtyFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeFifteenScreen);
  }
}
