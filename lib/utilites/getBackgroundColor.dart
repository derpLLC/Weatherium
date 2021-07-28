import 'package:flutter/painting.dart';
import 'package:weatherium/constants/constant.dart';

BoxDecoration? getBackgroundColor(String description) {
  for (String Key in backgroundColor.keys) {
    if (description == Key) {
      return backgroundColor[Key];
    }
  }
}
