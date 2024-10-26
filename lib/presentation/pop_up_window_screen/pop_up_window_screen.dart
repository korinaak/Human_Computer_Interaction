import 'package:bondapp/core/app_export.dart';
import 'package:flutter/material.dart';

class PopUpWindowScreen extends StatelessWidget {
  const PopUpWindowScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: 394.h,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 8.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 18.v),
              Container(
                height: 33.adaptSize,
                width: 33.adaptSize,
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconsCheckSmall,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.topCenter,
                ),
              ),
              SizedBox(height: 40.v),
              Text(
                "Matched locker ID:",
                style: CustomTextStyles.titleSmallBlack900,
              ),
              SizedBox(height: 73.v),
              SizedBox(
                width: 251.h,
                child: Divider(),
              ),
              SizedBox(height: 60.v),
              Text(
                "Please include a note inside",
                style: CustomTextStyles.titleSmallBlack900,
              ),
              SizedBox(height: 13.v),
              Text(
                "the book",
                style: CustomTextStyles.titleSmallBlack900,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
