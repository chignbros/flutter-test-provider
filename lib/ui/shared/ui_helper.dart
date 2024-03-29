import 'package:flutter/material.dart';

class UiHelper {
  static const double _verticalSpaceSmall = 10.0;
  static const double _verticalSpaceMedium = 20.0;
  static const double _verticalSpaceLarge = 60.0;

  static const double _horizontalSpaceSmall = 10.0;
  static const double _horizontalSpaceMedium = 20.0;
  static const double _horizontalSpaceLarge = 60.0;

  static Widget verticalSpaceSmall() {
    return verticalSpace(_verticalSpaceSmall);
  }

  static Widget verticalSpaceMedium() {
    return verticalSpace(_verticalSpaceMedium);
  }

  static Widget verticalSpaceLarge() {
    return verticalSpace(_verticalSpaceLarge);
  }

  static Widget verticalSpace(double height) {
    return Container(
      height: height,
    );
  }
  static Widget horizontalSpaceSmall(){
    return horizontalSpace(_horizontalSpaceSmall);
  }
  static Widget horizontalSpaceMedium(){
    return horizontalSpace(_horizontalSpaceMedium);
  }
  static Widget horizontalSpaceLarge(){
    return horizontalSpace(_horizontalSpaceLarge);
  }

  static Widget horizontalSpace(double width) {
    return Container(
      width: width,
    );
  }

}
