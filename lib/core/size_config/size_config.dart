import 'package:flutter/material.dart';

class SizeConfig {
  static  double? screenWidth;
  static  double? screenHeight;
  static  double? blockWidth;
  static  double? blockHeight;

  static  double? textMultiplier;
  static  double? imageSizeMultiplier;
  static  double? heightMultiplier;
  static  double? widthMultiplier;
  static  double? deviceRatio;
  static  bool? isPortrait;
  static  bool? isMobilePortrait;

  static MediaQueryData? _mediaQueryData;
  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;

 static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockWidth = (screenWidth! / 100)!;
    blockHeight = (screenHeight! / 100)!;

    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    _safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal!) / 100;
    safeBlockVertical = (screenHeight! - _safeAreaVertical!) / 100;

    textMultiplier = blockHeight;
    imageSizeMultiplier = blockWidth;
    heightMultiplier = blockHeight;
    widthMultiplier = blockWidth;
    deviceRatio = (screenWidth! / screenHeight!)!;
    isPortrait = (screenHeight! > screenWidth!)!;
    isMobilePortrait = isPortrait! && screenWidth! < 450;
  }

  static double scaleTextFont(double fontSize) {
    double scale = fontSize / 8.96;
    return (textMultiplier! * scale);
  }

  static double scaleWidth(double width) {
    double scale = width / 3.82;
    return (widthMultiplier! * scale);
  }

  static double scaleHeight(double height) {
    double scale = height / 8.22;
    return (heightMultiplier! * scale);
  }
}
// 382px
// 822px
