library widget_sizer;

import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class SizerConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double scaleFactor = 0;
  static double verticalScaleFactor = 0;


  static final double _defaultWidth = Device.get().isPhone ? 350.0 : 500;
  static final double _defaultHeight = Device.get().isPhone ? 680.0 : 1000;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    scaleFactor = (screenWidth / _defaultWidth);
    verticalScaleFactor = (screenHeight / _defaultHeight);
  }

  static double scale(double size) {
    return scaleFactor * size;
  }

  static double verticalScale(double size) {
    return verticalScaleFactor * size;
  }

  static double moderateScale(double size, [double factor = 0.5]) {
    return size + (scale(size) - size) * factor;
  }

  static double moderateVerticalScale(double size, [double factor = 0.5]) {
    return size + (verticalScale(size) - size) * factor;
  }
}

