import 'package:bondapp/core/app_export.dart';
import 'package:flutter/material.dart';

class AppWireframeOneScreen extends StatelessWidget {
  const AppWireframeOneScreen({Key? key})
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
            Navigator.pushNamed(context, AppRoutes.appWireframeTwoScreen);
          }
        },
        child: Scaffold(
          backgroundColor: theme.colorScheme.primary,
          body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Spacer(
                  flex: 38,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80.h),
                  child: Text(
                    "This is the ultimate app",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(right: 105.h),
                  child: Text(
                    " for book lovers",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(right: 70.h),
                  child: Text(
                    "who want to connect and ",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
            Padding(
              padding: EdgeInsets.only(right: 40.h),
               child: Text(
                  "create memories  through sharing",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,)
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(right: 80.h),
                  child: Text(
                    " their love for reading. ",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 95.v),
                Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: Text(
                    "Step 1: Sign in",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 61,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 72.h,
                    right: 50.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // ... other containers ...
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
                      // Second circular button
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
    );
  }
}
