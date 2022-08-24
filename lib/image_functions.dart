import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget callSvg(
  path, {
  Color? color,
  double? height,
  double? width,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: SvgPicture.asset(
      path,
      color: color,
    ),
  );
}

Widget callPng(path, {Color? color, BoxFit? fit, double? height, width}) {
  return Image.asset(
    path,
    fit: fit,
    height: height,
    width: width,
  );
}

Widget callPngDecoration(path, {Color? color}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: ExactAssetImage(path),
      ),
    ),
  );
}
