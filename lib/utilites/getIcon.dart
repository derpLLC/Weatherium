import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weatherium/constants/constant.dart';

Widget getIcon(String description, {double? height}) {
  Widget svg = Icon(Icons.error_outline_rounded, color: Colors.white);

  iconsForConditions.forEach((key, value) {
    if (key == description) {
      svg = SvgPicture.asset(value, height: height);
    }
  });

  return svg;
}
