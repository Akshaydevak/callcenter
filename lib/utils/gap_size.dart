// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget gapSize12() {
  return SizedBox(
    height: 12,
  );
}

Widget gapSize6() {
  return SizedBox(
    height: 6,
  );
}

Widget gapSize20() {
  return SizedBox(
    height: 20,
  );
}

Widget gapCustom({double height = 30}) {
  return SizedBox(
    height: height,
  );
}

Widget gapWidth(double? width) {
  return SizedBox(
    width: width,
  );
}
