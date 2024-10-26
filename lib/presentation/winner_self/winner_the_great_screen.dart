import 'package:flutter/material.dart';
import 'package:bondapp/core/app_export.dart';

class WinnerTheGreatScreen extends StatelessWidget {
  final String selecteddBook;

  const WinnerTheGreatScreen({Key? key, required this.selecteddBook})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.indigo10001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 29.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 100.v),
// Display the selected book image
                      CustomImageView(
                          imagePath:
                              selecteddBook, // Use the selected book image path
                          height: 300.v,
                          width: 200.h,
                          alignment: Alignment.center),
                      SizedBox(height: 10.v),
                      Text("Congratulations! That’s your",
                          style: CustomTextStyles.titleSmallGray800),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(right: 12.h),
                          child: Text("favourite book of all time!",
                              style: CustomTextStyles.titleSmallBlack900)),
                      SizedBox(height: 93.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text("We are working on finding the",
                                  style: CustomTextStyles.titleSmallBlack900))),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(right: 42.h),
                          child: Text("best match for you!",
                              style: CustomTextStyles.titleSmallPrimary)),
                      SizedBox(height: 45.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtEndquiz(context);
                          },
                          child: Container(
                              width: 93.h,
                              margin: EdgeInsets.only(right: 81.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.h, vertical: 2.v),
                              decoration: AppDecoration.fillIndigo800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder102),
                              child: Text("End quiz",
                                  style: theme.textTheme.titleSmall)))
                    ]))));
  }

  /// Navigates to the appWireframeTenScreen when the action is triggered.
  onTapTxtEndquiz(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTenScreen);
  }
}
