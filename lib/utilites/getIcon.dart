import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weatherium/constants/constant.dart';

Widget getIcon(String description, {double? height}) {
  Widget svg = Icon(Icons.error_outline_rounded, color: Colors.white);

  for (String key in iconsForConditions.keys) {
    if (key == description) {
      return SvgPicture.asset(iconsForConditions[key].toString(),
          height: height);
    }
  }

  return svg;
}
