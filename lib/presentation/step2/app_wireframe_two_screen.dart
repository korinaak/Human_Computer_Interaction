import 'package:bondapp/core/app_export.dart';
import 'package:flutter/material.dart';

class AppWireframeTwoScreen extends StatelessWidget {
  const AppWireframeTwoScreen({Key? key})
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
            Navigator.pushNamed(context, AppRoutes.appWireframeThreeScreen);
          }
        },
        child: Scaffold(
          backgroundColor: appTheme.indigo500,
          body: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.fillIndigo800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 130.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "All you need to do is find the closest  ",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(right: 85.h),
                      child: Text(
                        "BOX NOW locker ID",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "where you will receive a book ",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(right: 65.h),
                      child: Text(
                        "from your book buddy. ",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 104.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Step 2: Find ",
                            style: CustomTextStyles.titleSmallffffffff,
                          ),
                          TextSpan(
                            text: "BOX NOW",
                            style: CustomTextStyles.titleSmallff5ef06d,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(right: 35.h),
                      child: Text(
                        "locker ID",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 308.v),
                    Padding(
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
                            flex: 32,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.appWireframeThreeScreen);
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
