// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Palette {
  static MaterialColor kToDark = const MaterialColor(
    0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFFFE500),
      100: Color(0xFFFFE500),
      200: Color(0xFFFFE500),
      300: Color(0xFFFFE500),
      400: Color(0xFFFFE500),
      500: Color(0xFFFFE500),
      600: Color(0xFFFFE500),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );

  static const Color PRIMARY = Color(0xff086DB5);

  static const BACKGROUND = Color(0xFFcee2f0);

  static const DARK = Color(0xFF000000);
  static const DANGER = Color(0xFFFF4444);
  static const background = Color(0xFFcee2f0);
  static const Grey = Colors.grey;
  static const blue = Color(0xff086DB5);
  static const LiteGrey = Color(0xFFE0E0F0);
  static const white = Colors.white;
  static const SUCCESS = Color(0xFF1FBC4B);
  static const WARNING = Color(0xFF00BBF6);
  static const GRADIENT1 = Color(0xFF7D19B0);
  static const GRADIENT2 = Color(0xFF9575CD);
  static const ICONCOLOR = Color(0xF18AB9E6);
  static const whiteShade = Color(0xB6E9EDF1);
  static const containerDark = Color(0xDA171718);
  static const blueDark = Color(0xE71E2969);
  static const containerDarknew = Color(0xFF423E3F);
  static const cardColor = Color(0xEDF3F7F7);
  static const newStatusContainer = Color(0xFF086DB5);
  static const blueShade = Color(0xFF96C1E0);
  static const fieldColor = Color(0xFFEDF1F2);
  static const line = Color(0xFF2585C9);
  static const leftMenuColor = Color(0xFFFAFAFA);
  static const iconContainerSeller = Color(0xFFF2F3F5);
  static const cardColorSeller = Color(0xFF51A3A3);
  static const pieChart = Color(0xFF545E75);
  static const barColorDark = Color(0xFF545E75);
  static const titleCard = Color(0xFF0867AC);
  static const searchInputColor = Color(0xffE1E7ED);
  static const colrCallCenter=Color(0xffF4F8FF);
  static const colrWarrantySelectee=Color(0xffF2F2F2);
  static const orderDetailColor = Color(0xffECF8F9);
  static const sellerSecondaryColor = Color(0xff545E75);
  static const sellerBackground = Color(0xffE5E5E5);
  static Color hexToColor({required String code}) {
    try {
      return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    } catch (e) {
      debugPrint("Exception:" + e.toString());
    }

    return const Color(0xFFEEEEEE);
  }

  static LinearGradient primaryGradient = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    //colors: [SECONDARY, PRIMARY],
    colors: [Colors.black, Colors.black],
  );

  static LinearGradient secondaryGradient = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [DARK, DARK],
  );
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);
