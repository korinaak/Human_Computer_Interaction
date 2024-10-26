import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:bondapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bondapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bondapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AppWireframeThirteenScreen extends StatelessWidget {
  const AppWireframeThirteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 5.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 36.v,
                      width: 35.h,
                      onTap: () {
                        onTapImgLock(context);
                      }),
                  SizedBox(height: 78.v),
                  Text("Notifications",
                      style: CustomTextStyles.titleSmallExtraBold),
                  SizedBox(height: 63.v),
                  CustomElevatedButton(
                      height: 68.v,
                      text: "We found your match",
                      buttonStyle: CustomButtonStyles.fillPrimaryTL34,
                      buttonTextStyle: CustomTextStyles.displayMediumBlack900,
                      onPressed: () {
                        onTapWeFoundYourMatch(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconsClose24px,
              margin: EdgeInsets.only(top: 13.v, bottom: 19.v),
              onTap: () {
                onTapIconsClosepx(context);
              })
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the appWireframeTenScreen when the action is triggered.
  onTapIconsClosepx(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTenScreen);
  }

  /// Navigates to the appWireframeTwelveScreen when the action is triggered.
  onTapImgLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTwelveScreen);
  }

  /// Navigates to the popUpWindowScreen when the action is triggered.
  onTapWeFoundYourMatch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.popUpWindowScreen);
  }
}
