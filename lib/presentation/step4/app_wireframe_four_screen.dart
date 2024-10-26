import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AppWireframeFourScreen extends StatelessWidget {
  const AppWireframeFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.indigoA200,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(flex: 51),
                      Padding(
                          padding: EdgeInsets.only(right: 65.h),
                          child: Text("When your match is found,",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(right: 40.h),
                        child: Text("you will be notified to send a book ",
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(right: 40.h),
                          child: Text("of your choice and receive a book ",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(right: 40.h),
                          child: Text("from your new book best friend. ",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 86.v),
                      Padding(
                          padding: EdgeInsets.only(right: 30.h),
                          child: Text("Step 4: Wait for your match",
                              style: theme.textTheme.titleSmall)),
                      Spacer(flex: 48),
                      CustomElevatedButton(
                          height: 60.v,
                          text: "Sign in ",
                          margin: EdgeInsets.only(left: 40.h, right: 23.h),
                          buttonStyle: CustomButtonStyles.fillIndigo,
                          buttonTextStyle: CustomTextStyles.titleSmallExtraBold,
                          onPressed: () {
                            onTapSignIn(context);
                          }),
                      SizedBox(height: 12.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSignUp(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(right: 130.h),
                              child: Text("Sign up",
                                  style:
                                      CustomTextStyles.titleSmallIndigo800))),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 74.h, right: 52.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          AppRoutes.appWireframeOneScreen);
                                    },
                                    child: Container(
                                        height: 17.adaptSize,
                                        width: 17.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray700,
                                            borderRadius:
                                                BorderRadius.circular(8.h)))),
                                Spacer(flex: 33),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          AppRoutes.appWireframeTwoScreen);
                                    },
                                    child: Container(
                                        height: 17.adaptSize,
                                        width: 17.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray700,
                                            borderRadius:
                                                BorderRadius.circular(8.h)))),
                                Spacer(flex: 32),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          AppRoutes.appWireframeThreeScreen);
                                    },
                                    child: Container(
                                        height: 17.adaptSize,
                                        width: 17.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray700,
                                            borderRadius:
                                                BorderRadius.circular(8.h)))),
                                Spacer(flex: 33),
                                Container(
                                    height: 17.adaptSize,
                                    width: 17.adaptSize,
                                    decoration: BoxDecoration(
                                        color: appTheme.black900,
                                        borderRadius:
                                            BorderRadius.circular(8.h)))
                              ]))
                    ]))));
  }

  /// Navigates to the appWireframeFiveScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.SigninPage);
    //Navigator.pushNamed(context, AppRoutes.appWireframeTenScreen);
  }

  /// Navigates to the appWireframeTwentytwoScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.SignupPage);
  }

  /// Navigates to the appWireframeOneScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeOneScreen);
  }

  /// Navigates to the appWireframeTwoScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTwoScreen);
  }

  /// Navigates to the appWireframeThreeScreen when the action is triggered.
  onTapView2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeThreeScreen);
  }
}
