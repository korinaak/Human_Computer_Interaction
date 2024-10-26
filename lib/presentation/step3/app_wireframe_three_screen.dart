import 'package:bondapp/core/app_export.dart';
import 'package:flutter/material.dart';

class AppWireframeThreeScreen extends StatelessWidget {
  const AppWireframeThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          // Check the velocity of the swipe to determine the direction
          if (details.primaryVelocity! < 0) {
            // Swiping from right to left
            Navigator.pushNamed(context, AppRoutes.appWireframeFourScreen);
          }
        },
        child: Scaffold(
          backgroundColor: appTheme.gray400,
          body: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.fillIndigo,
                child: Column(
                  children: [
                    SizedBox(height: 219.v),
                    Text(
                      "In order to find a match, you will ",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 15.v),
                    Text(
                      "take a QUIZ, in order to determine what  ",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      "type of book reader you are.",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 99.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 11.h),
                        child: Text(
                          "Step 3: Take the quiz",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 280.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 83.h,
                          right: 61.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.appWireframeOneScreen);
                              },
                              child: Container(
                                height: 17.adaptSize,
                                width: 17.adaptSize,
                                decoration: BoxDecoration(
                                  color: appTheme.gray700,
                                  borderRadius: BorderRadius.circular(
                                    8.h,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 33,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.appWireframeTwoScreen);
                              },
                              child: Container(
                                height: 17.adaptSize,
                                width: 17.adaptSize,
                                decoration: BoxDecoration(
                                  color: appTheme.gray700,
                                  borderRadius: BorderRadius.circular(
                                    8.h,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 33,
                            ),
                            Container(
                              height: 17.adaptSize,
                              width: 17.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.black900,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 33,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.appWireframeFourScreen);
                              },
                              child: Container(
                                height: 17.adaptSize,
                                width: 17.adaptSize,
                                decoration: BoxDecoration(
                                  color: appTheme.gray700,
                                  borderRadius: BorderRadius.circular(
                                    8.h,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 33,
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
}
