import 'package:flutter/material.dart';
import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/presentation/winner_scifi/winner_the_great_one_screen.dart';

class AppWireframeFifteenScreen extends StatefulWidget {
  @override
  _AppWireframeFifteenScreenState createState() =>
      _AppWireframeFifteenScreenState();
}

class _AppWireframeFifteenScreenState extends State<AppWireframeFifteenScreen> {
  int tapCount = 0;
  String selectedBook = "";
  List<String> images = []; // List of image paths
  List<String> displayedImages = []; // Currently displayed images

  @override
  void initState() {
    super.initState();
    // Initialize images list with paths of all images in assets
    images = [
      ImageConstant.imgManifestforkids,
      ImageConstant.imgTentimescalmer1,
      ImageConstant.imgThatlittlevoiceinyourhead,
      ImageConstant.imgThebodykeepsthescore,
      ImageConstant.imgThecourseoflove,
      ImageConstant.imgThediscomfortzone,
      ImageConstant.imgThepivotyear1,
      ImageConstant.imgUntamed2,
    ];
    // Display the first two images
    displayedImages = images.take(2).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo10001,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 57.h, vertical: 49.v),
              decoration: AppDecoration.fillIndigo800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 17.v),
                  Text("Tap your fave",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 21.v),
                  for (var i = 0; i < displayedImages.length; i++)
                    GestureDetector(
                      onTap: () =>
                          onTapImgImage(context, displayedImages[i], i),
                      child: Image.asset(
                        displayedImages[i],
                        height: 305.v,
                        width: 224.h,
                      ),
                    ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTapImgImage(BuildContext context, String book, int index) {
    setState(() {
      selectedBook = book;
      tapCount++;
      // Replace unselected image with new one from the list
      int replaceIndex = (index + 1) % 2; // Get the index of the other image
      if (tapCount < 6 && images.length > tapCount + 1) {
        displayedImages[replaceIndex] = images[tapCount + 1];
      }
    });
    if (tapCount >= 6) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                WinnerTheGreatOneScreen(selectedBook: selectedBook)),
      );
    }
  }
}
