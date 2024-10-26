import 'package:flutter/material.dart';
import 'package:bondapp/core/app_export.dart';
import 'package:bondapp/presentation/winner_self/winner_the_great_screen.dart';

class AppWireframeFortyoneScreen extends StatefulWidget {
  @override
  _AppWireframeFortyoneScreenState createState() =>
      _AppWireframeFortyoneScreenState();
}

class _AppWireframeFortyoneScreenState
    extends State<AppWireframeFortyoneScreen> {
  int tapCount = 0;
  String selecteddBook = "";
  List<String> images = []; // List of image paths
  List<String> displayedImages = []; // Currently displayed images

  @override
  void initState() {
    super.initState();
    // Initialize images list with paths of all images in assets
    images = [
      ImageConstant.imgDune1,
      ImageConstant.imgFrankenstein1,
      ImageConstant.imgNeuromancer1,
      ImageConstant.imgHyperion1,
      ImageConstant.imgJurassicpark1,
      ImageConstant.imgSolaris1,
      ImageConstant.imgThelefthandofdarkness,
      ImageConstant.imgThestarsmydestination,
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
      selecteddBook = book;
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
                WinnerTheGreatScreen(selecteddBook: selecteddBook)),
      );
    }
  }
}
