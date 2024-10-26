// import 'package:bondapp/core/app_export.dart';
// import 'package:bondapp/widgets/app_bar/appbar_trailing_image.dart';
// import 'package:bondapp/widgets/app_bar/custom_app_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:bondapp/presentation/app_wireframe_seven_dialog/app_wireframe_seven_dialog.dart';

// class AppWireframeTenScreen extends StatelessWidget {
//   const AppWireframeTenScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: _buildAppBar(context),
//         body: Container(
//           width: double.maxFinite,
//           padding: EdgeInsets.symmetric(vertical: 48.v),
//           child: Column(
//             children: [
//               SizedBox(height: 11.v),
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(text: "B", style: theme.textTheme.displayMedium),
//                     TextSpan(
//                         text: "o",
//                         style: CustomTextStyles.displayMediumff2d4583),
//                     TextSpan(
//                         text: "o",
//                         style: CustomTextStyles.displayMediumff3e60c1),
//                     TextSpan(
//                         text: "k",
//                         style: CustomTextStyles.displayMediumff5a82fc),
//                     TextSpan(text: "B", style: theme.textTheme.displayMedium),
//                     TextSpan(
//                         text: "o",
//                         style: CustomTextStyles.displayMediumff2d4583),
//                     TextSpan(
//                         text: "n",
//                         style: CustomTextStyles.displayMediumff3e60c1),
//                     TextSpan(
//                         text: "d",
//                         style: CustomTextStyles.displayMediumff5a82fc)
//                     // ... your existing TextSpans
//                   ],
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//               SizedBox(height: 25.v),
//               CustomImageView(
//                   imagePath: ImageConstant.imgOpenBook2702154,
//                   height: 200.adaptSize,
//                   width: 200.adaptSize),
//               SizedBox(height: 20.v), // Adjust the spacing
//               // Use the horizontal scrollable ListView here
//               Container(
//                 height: 200,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     // Add your quiz widgets here (ListView items)
//                     _buildFrameFourQuiz(context, "self improvement",
//                         ImageConstant.imgOpenBook2702154),
//                     _buildFrameFourQuiz(context, "science-fiction",
//                         ImageConstant.imgOpenBook2702134195x100),
//                     _buildFrameFourQuiz(
//                         context, "Quiz 2", ImageConstant.imgBook19566261),
//                     _buildFrameFourQuiz(
//                         context, "Quiz 3", ImageConstant.imgBook19566261),

//                     // Add more quizzes as needed
//                   ],
//                 ),
//               ),
//               SizedBox(height: 40.v),
//               ElevatedButton(
//                 onPressed: () {
//                   onTapTxtNext(context);
//                 },
//                 child: Text("     Profile      ",
//                     style: CustomTextStyles.titleSmallExtraBold),
//                 // child: null,
//               ),
//               // Text("Quizes", style: CustomTextStyles.titleSmallExtraBold),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Your existing code for _buildAppBar...
//   /*PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(actions: [
//       AppbarTrailingImage(
//           imagePath: ImageConstant.imgLock,
//           margin: EdgeInsets.fromLTRB(25.h, 9.v, 25.h, 10.v),
//           onTap: () {
//             onTapLock(context);
//           })
//     ]);
//   } */
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(actions: [
//       AppbarTrailingImage(
//           imagePath: ImageConstant.imgLock,
//           margin: EdgeInsets.fromLTRB(25.h, 9.v, 25.h, 10.v),
//           onTap: () {
//             onTapLock(context);
//           })
//     ]);
//   }

//   // Your existing code for _buildFrameFour...
//   Widget _buildFrameFour(BuildContext context) {
//     return Container(
//         width: double.maxFinite,
//         padding: EdgeInsets.symmetric(horizontal: 7.h),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Card(
//                   clipBehavior: Clip.antiAlias,
//                   elevation: 0,
//                   margin: EdgeInsets.only(top: 8.v),
//                   color: appTheme.gray40001,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadiusStyle.roundedBorder20),
//                   child: Container(
//                       height: 142.v,
//                       width: 150.h,
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
//                       decoration: AppDecoration.fillGray40001.copyWith(
//                           borderRadius: BorderRadiusStyle.roundedBorder20),
//                       child: Stack(alignment: Alignment.topLeft, children: [
//                         Padding(
//                             padding: EdgeInsets.only(top: 5.v),
//                             child: _buildFortyFive(context,
//                                 bookImage: ImageConstant.imgOpenBook2702154,
//                                 lockedText: "UNLOCK", onTapLockedText: () {
//                               onTapTxtLockedText(context);
//                             })),
//                         Align(
//                             alignment: Alignment.topLeft,
//                             child: Padding(
//                                 padding: EdgeInsets.only(left: 26.h),
//                                 child: Text("self improvement",
//                                     style: CustomTextStyles.titleSmallManrope)))
//                       ]))),
//               Card(
//                   clipBehavior: Clip.antiAlias,
//                   elevation: 0,
//                   margin: EdgeInsets.only(top: 8.v),
//                   color: appTheme.gray40001,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadiusStyle.roundedBorder20),
//                   child: Container(
//                       height: 142.v,
//                       width: 150.h,
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
//                       decoration: AppDecoration.fillGray40001.copyWith(
//                           borderRadius: BorderRadiusStyle.roundedBorder20),
//                       child: Stack(alignment: Alignment.topLeft, children: [
//                         Padding(
//                             padding: EdgeInsets.only(top: 5.v),
//                             child: _buildFortyFive(context,
//                                 bookImage:
//                                     ImageConstant.imgOpenBook2702134195x100,
//                                 lockedText: "UNLOCK", onTapLockedText: () {
//                               onTapTxtLockedText(context);
//                             })),
//                         Align(
//                             alignment: Alignment.topLeft,
//                             child: Padding(
//                                 padding: EdgeInsets.only(left: 26.h),
//                                 child: Text("science-fiction",
//                                     style: CustomTextStyles.titleSmallManrope)))
//                       ]))),
//               Container(
//                   margin: EdgeInsets.only(top: 8.v, right: 13.h),
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
//                   decoration: AppDecoration.fillGray80001.copyWith(
//                       borderRadius: BorderRadiusStyle.roundedBorder20),
//                   child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Align(
//                             alignment: Alignment.center,
//                             child: Text("Quiz 2",
//                                 style: CustomTextStyles.titleSmallManrope)),
//                         SizedBox(height: 12.v),
//                         _buildFortyFive(context,
//                             bookImage: ImageConstant.imgBook19566261,
//                             lockedText: "LOCKED")
//                       ])),
//               Container(
//                   margin: EdgeInsets.only(top: 8.v, right: 13.h),
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
//                   decoration: AppDecoration.fillGray80001.copyWith(
//                       borderRadius: BorderRadiusStyle.roundedBorder20),
//                   child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Align(
//                             alignment: Alignment.center,
//                             child: Text("Quiz 3",
//                                 style: CustomTextStyles.titleSmallManrope)),
//                         SizedBox(height: 12.v),
//                         _buildFortyFive(context,
//                             bookImage: ImageConstant.imgBook19566261,
//                             lockedText: "LOCKED")
//                       ]))
//             ]));
//   }

//   // New function to build individual quiz items
//   Widget _buildFrameFourQuiz(
//       BuildContext context, String quizTitle, String bookImage) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () {
//           // Handle quiz item tap
//         },
//         child: Container(
//           width: 200,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Colors.grey,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomImageView(
//                 imagePath: bookImage,
//                 height: 100.adaptSize,
//                 width: 100.adaptSize,
//                 alignment: Alignment.center,
//               ),
//               SizedBox(height: 10.v),
//               Text(
//                 quizTitle,
//                 style: TextStyle(fontSize: 16, color: Colors.white),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildFortyFive(
//     BuildContext context, {
//     required String bookImage,
//     required String lockedText,
//     Function? onTapLockedText,
//   }) {
//     return SizedBox(
//         height: 100.adaptSize,
//         width: 100.adaptSize,
//         child: Stack(alignment: Alignment.topRight, children: [
//           CustomImageView(
//               imagePath: bookImage,
//               height: 100.adaptSize,
//               width: 100.adaptSize,
//               alignment: Alignment.center),
//           GestureDetector(
//               onTap: () {
//                 onTapLockedText!.call();
//               },
//               child: Align(
//                   alignment: Alignment.topRight,
//                   child: Container(
//                       width: 67.h,
//                       margin: EdgeInsets.only(top: 19.v, right: 9.h),
//                       child: Text(lockedText,
//                           maxLines: 7,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.center,
//                           style: CustomTextStyles.titleSmallCyanA200
//                               .copyWith(color: appTheme.cyanA200)))))
//         ]));
//   }

//   // Your existing code for onTapLock...
//   onTapLock(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.appWireframeTwelveScreen);
//   }

//   /// Displays a dialog with the [AppWireframeSevenDialog] content.
//   // Your existing code for onTapTxtLockedText...
//   onTapTxtLockedText(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               content: AppWireframeSevenDialog(),
//               backgroundColor: Colors.transparent,
//               contentPadding: EdgeInsets.zero,
//               insetPadding: const EdgeInsets.only(left: 0),
//             ));
//   }

//   onTapTxtNext(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.appWireframeTwelveScreen);
//   }
// }

////////////////////////

import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bondapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:bondapp/presentation/start_button_scifi/app_wireframe_seven_dialog.dart';

class AppWireframeTenScreen extends StatelessWidget {
  AppWireframeTenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 48.v),
          child: Column(
            children: [
              SizedBox(height: 11.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "B", style: theme.textTheme.displayMedium),
                    TextSpan(
                        text: "o",
                        style: CustomTextStyles.displayMediumff2d4583),
                    TextSpan(
                        text: "o",
                        style: CustomTextStyles.displayMediumff3e60c1),
                    TextSpan(
                        text: "k",
                        style: CustomTextStyles.displayMediumff5a82fc),
                    TextSpan(text: "B", style: theme.textTheme.displayMedium),
                    TextSpan(
                        text: "o",
                        style: CustomTextStyles.displayMediumff2d4583),
                    TextSpan(
                        text: "n",
                        style: CustomTextStyles.displayMediumff3e60c1),
                    TextSpan(
                        text: "d",
                        style: CustomTextStyles.displayMediumff5a82fc)
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 25.v),
              CustomImageView(
                  imagePath: ImageConstant.imgBook19566261,
                  height: 200.adaptSize,
                  width: 200.adaptSize),
              SizedBox(height: 20.v),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildFrameFourQuiz(context, "Self improvement",
                        ImageConstant.imgOpenBook2702154),
                    _buildFrameFourQuiz(context, "Science-fiction",
                        ImageConstant.imgOpenBook2702134195x100),
                    _buildFrameFourQuiz(
                        context, "Poetry", ImageConstant.imgBook19566261),
                    _buildFrameFourQuiz(context, "Detective novels",
                        ImageConstant.imgBook19566261),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              ElevatedButton(
                onPressed: () {
                  onTapTxtNext(context);
                },
                child: Text("     Profile      ",
                    style: CustomTextStyles.titleSmallExtraBold),
                // child: null,
              ),
              // Text("Quizes", style: CustomTextStyles.titleSmallExtraBold),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgLock,
          margin: EdgeInsets.fromLTRB(25.h, 9.v, 25.h, 10.v),
          onTap: () {
            onTapLock(context);
          })
    ]);
  }

  bool isFirstImgOpenBook2702134195x100 = true;

  Widget _buildFrameFour(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildFrameFourQuiz(context, "Self improvement",
              ImageConstant.imgOpenBook2702134195x100),
          _buildFrameFourQuiz(context, "Science-fiction",
              ImageConstant.imgOpenBook2702134195x100),
          _buildFrameFourQuiz(context, "Poetry", ImageConstant.imgBook19566261),
          _buildFrameFourQuiz(
              context, "Detective novels", ImageConstant.imgBook19566261),
        ],
      ),
    );
  }

  Widget _buildFrameFourQuiz(
      BuildContext context, String quizTitle, String bookImage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (bookImage == ImageConstant.imgOpenBook2702134195x100 &&
              isFirstImgOpenBook2702134195x100) {
            isFirstImgOpenBook2702134195x100 =
                false; // Ensure it only works for the first instance
            Navigator.pushNamed(
                context,
                AppRoutes
                    .appWireframeFortyoneScreen); // Replace with your actual route
          } else if (bookImage == ImageConstant.imgOpenBook2702154) {
            // Ensure it only works for the first instance
            Navigator.pushNamed(context, AppRoutes.appWireframeFifteenScreen);
          } else {
            // Handle other quiz item taps
          }
        },
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: bookImage,
                height: 100.adaptSize,
                width: 100.adaptSize,
                alignment: Alignment.center,
              ),
              SizedBox(height: 10.v),
              Text(
                quizTitle,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFortyFive(
    BuildContext context, {
    required String bookImage,
    required String lockedText,
    Function? onTapLockedText,
  }) {
    return SizedBox(
        height: 100.adaptSize,
        width: 100.adaptSize,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: bookImage,
              height: 100.adaptSize,
              width: 100.adaptSize,
              alignment: Alignment.center),
          GestureDetector(
              onTap: () {
                onTapLockedText!.call();
              },
              child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 67.h,
                      margin: EdgeInsets.only(top: 19.v, right: 9.h),
                      child: Text(lockedText,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallCyanA200
                              .copyWith(color: appTheme.cyanA200)))))
        ]));
  }

  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTwelveScreen);
  }

  onTapTxtLockedText(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: AppWireframeSevenDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  onTapTxtNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appWireframeTwelveScreen);
  }
}
