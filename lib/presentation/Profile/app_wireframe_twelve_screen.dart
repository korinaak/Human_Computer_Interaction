import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:bondapp/widgets/app_bar/appbar_title_image.dart';
import 'package:bondapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bondapp/widgets/custom_elevated_button.dart';
import 'package:bondapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bondapp/widgets/custom_text_form_field.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: must_be_immutable
class AppWireframeTwelveScreen extends StatelessWidget {
  AppWireframeTwelveScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController writeHereController = TextEditingController();

  TextEditingController lockerIDvalueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: const Text('               Profile'),
            ),
            body: RawKeyboardListener(
                focusNode: FocusNode(),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 136.v),
                    child: Column(children: [
                      SizedBox(
                          height: 61.v,
                          width: 215.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 9.v),
                                    child: Text("find your locker’s ID",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )))),
                            Align(
                              child: GestureDetector(
                                onTap: () => _launchURL(),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("Tap here to",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 61.v,
                                    width: 215.h,
                                    decoration: BoxDecoration(
                                        color:
                                            appTheme.black900.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(30.h))))
                          ])),
                      Spacer(flex: 61),
                      Text("What’s your locker’s ID?",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      SizedBox(height: 20.v),
                      CustomTextFormField(
                          width: 223.h,
                          controller: writeHereController,
                          hintText: "write here",
                          textInputAction: TextInputAction.done,
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineBlack),
                      Spacer(flex: 38),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            onTapTxtReady(context);
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(right: 200.h, bottom: 30.v),
                            child: Text("Ready",
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 36.v,
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.arrow,
            margin: EdgeInsets.only(left: 17.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitleImage(
            imagePath: ImageConstant.close,
            margin: EdgeInsets.only(left: 280.h)));
  }

  onTapTxtReady(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTenScreen);
  }

  void _launchURL() async {
    const url =
        'https://boxnow.gr/locker-finder?gad_source=1&gclid=CjwKCAiAqY6tBhAtEiwAHeRopTFeK1snBcBDld1DlyeLl4feV1EsMgHI9uyIIQUsySS1dHXSvjl0MRoChg4QAvD_BwE';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the appWireframeThirteenScreen when the action is triggered.
  onTapTxtNotifications(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeThirteenScreen);
  }
}
