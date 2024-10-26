import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppWireframeSixScreen extends StatelessWidget {
  AppWireframeSixScreen({Key? key}) : super(key: key);

  TextEditingController writeHereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                    padding: EdgeInsets.only(bottom: 10.v),
                                    child: Text("find your locker’s ID",
                                        style: theme.textTheme.titleSmall))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 17.v),
                                    child: Text("Tap here to",
                                        style: theme.textTheme.titleSmall))),
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
                          style: theme.textTheme.titleSmall),
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
                            padding: EdgeInsets.only(right: 22.h, bottom: 30.v),
                            child: Text("Ready",
                                style: theme.textTheme.titleSmall),
                          ),
                        ),
                      ),
                    ])))));
  }

  /// Navigates to the appWireframeTenScreen when the action is triggered.
  onTapTxtReady(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTenScreen);
  }
}
/*
import 'package:flutter/material.dart';
import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/widgets/custom_text_form_field.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: must_be_immutable
class AppWireframeSixScreen extends StatelessWidget {
  AppWireframeSixScreen({Key? key}) : super(key: key);

  TextEditingController writeHereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: RawKeyboardListener(
                focusNode: FocusNode(),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 136.v),
                    child: Column(children: [
                      GestureDetector(
                        onTap: () => _launchURL(),
                        child: Container(
                          height: 61.v,
                          width: 215.h,
                          decoration: BoxDecoration(
                              color: appTheme.black90001.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30.h)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tap here to",
                                style: theme.textTheme.titleSmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.v),
                                child: Text(
                                  "find your locker’s ID",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(flex: 61),
                      Text("What’s your locker’s ID?",
                          style: theme.textTheme.titleSmall),
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
                            padding: EdgeInsets.only(right: 22.h, bottom: 30.v),
                            child: Text("Ready",
                                style: theme.textTheme.titleSmall),
                          ),
                        ),
                      ),
                    ])))));
  }

  void _launchURL() async {
    const urlString =
        'https://boxnow.gr/locker-finder?gad_source=1&gclid=CjwKCAiAqY6tBhAtEiwAHeRopTFeK1snBcBDld1DlyeLl4feV1EsMgHI9uyIIQUsySS1dHXSvjl0MRoChg4QAvD_BwE';
    final url = Uri.parse(urlString);

    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        print('Could not launch $urlString');
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  onTapTxtReady(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTenScreen);
  }
} */

