import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:bondapp/presentation/start_page.dart';

class AppWireframeScreen extends StatelessWidget {
  const AppWireframeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          // Check the velocity of the swipe to determine the direction
          if (details.primaryVelocity! < 0) {
            // Swiping from right to left
            Navigator.pushNamed(context, AppRoutes.appWireframeOneScreen);
          }
        },
        child: Scaffold(
          backgroundColor: theme.colorScheme.onPrimary,
          body: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1,
                      height: 800.v,
                      width: 360.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.h, vertical: 41.v),
                        decoration: AppDecoration.fillGray,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 66.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 60.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "B",
                                        style: theme.textTheme.displayMedium,
                                      ),
                                      TextSpan(
                                        text: "o",
                                        style: CustomTextStyles
                                            .displayMediumff2d4583,
                                      ),
                                      TextSpan(
                                        text: "o",
                                        style: CustomTextStyles
                                            .displayMediumff3e60c1,
                                      ),
                                      TextSpan(
                                        text: "k",
                                        style: CustomTextStyles
                                            .displayMediumff5a82fc,
                                      ),
                                      TextSpan(
                                        text: "B",
                                        style: theme.textTheme.displayMedium,
                                      ),
                                      TextSpan(
                                        text: "o",
                                        style: CustomTextStyles
                                            .displayMediumff2d4583,
                                      ),
                                      TextSpan(
                                        text: "n",
                                        style: CustomTextStyles
                                            .displayMediumff3e60c1,
                                      ),
                                      TextSpan(
                                        text: "d",
                                        style: CustomTextStyles
                                            .displayMediumff5a82fc,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            SizedBox(height: 50.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgOpenBook27021341,
                              height: 250.v,
                              width: 244.h,
                              alignment: Alignment.center,
                            ),
                            SizedBox(height: 59.v),
                            Text(
                              "Welcome!",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineLarge,
                            ),
                            SizedBox(height: 30.v),
                            Align(
                                //alignment: Alignment.center,
                                child: Text("We’re glad you’re here.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 24.0))

                                //style: CustomTextStyles.titleSmallBlack,
                                //),
                                ),
                            SizedBox(height: 11.v),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text("Let’s get started.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 24.0)),
                              ),
                            ),
                            SizedBox(height: 6.v),
                            CustomElevatedButton(
                              height: 60.v,
                              text: "GET STARTED",
                              margin: EdgeInsets.symmetric(horizontal: 40.h),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallExtraBold,
                              onPressed: () {
                                onTapGETSTARTED(context);
                              },
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the appWireframeOneScreen when the action is triggered.
  void onTapGETSTARTED(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeOneScreen);
  }
}
