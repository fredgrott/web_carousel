// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:web_carousel/src/presentation/themes/button_theme_data.dart';
import 'package:web_carousel/src/presentation/themes/colors.dart';
import 'package:web_carousel/src/presentation/themes/dialog_theme.dart';
import 'package:web_carousel/src/presentation/themes/divider_theme_data.dart';
import 'package:web_carousel/src/presentation/themes/elevated_button_theme_data.dart';
import 'package:web_carousel/src/presentation/themes/icon_theme_data.dart';
import 'package:web_carousel/src/presentation/themes/outlined_button_theme_data.dart';
import 'package:web_carousel/src/presentation/themes/text_button_theme_data.dart';
import 'package:web_carousel/src/presentation/themes/text_theme.dart';
import 'package:web_carousel/src/presentation/themes/theme_defaults.dart';
import 'package:web_carousel/src/presentation/themes/typography.dart';
import 'package:web_carousel/src/presentation/themes/wave_splash.dart';

final ThemeData appMaterialLightThemeData = ThemeData(
  applyElevationOverlayColor: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  splashFactory: appMaterialInteractiveInkFeatureFactory,
  useMaterial3: true,
  // We use this rather than colorSchemeSeed as we then can
  // customize ColorScheme via appMaterialLightColorScheme.copyWith()
  colorScheme: appMaterialLightColorScheme,
  brightness: Brightness.light,
  highlightColor: appMaterialLightHighLightColor,
  splashColor: appMaterialLightSplashColor,
  primaryColor: appMaterialLightPrimaryColor,
  canvasColor: appMaterialLightCanvasColor,
  scaffoldBackgroundColor: appMaterialLightScaffoldBackgroundColor,
  dividerColor: appMaterialLightDividerColor,
  backgroundColor: appMaterialLightBackgroundColor,
  indicatorColor: appMaterialLightIndicatorColor,
  errorColor: appMaterialLightErrorColor,
  focusColor: appMaterialLightFocusColor,
  hoverColor: appMaterialLightHoverColor,
  shadowColor: appMaterialLightShadowColor,
  selectedRowColor: appMaterialLightSelectedRowColor,
  unselectedWidgetColor: appMaterialLightUnselectedWidgetColor,
  secondaryHeaderColor: appMaterialLightSecondaryHeaderColor,
  hintColor: appMaterialLightHintColor,
  disabledColor: appMaterialLightDisabledColor,
  toggleableActiveColor: appMaterialLightToggleableActiveColor,
  dialogBackgroundColor: appMaterialLightBackgroundColor,

  typography: appTypography,
  textTheme: appMateriaLightTextTheme,
  primaryTextTheme: appMaterialLightPrimaryTextTheme,
  iconTheme: appMaterialLightIconThemeData,
  primaryIconTheme: appMaterialLightPrimaryIconTheme,
  dialogTheme: appMaterialLightDialogTheme,
  elevatedButtonTheme: appMaterialLightElevatedButtonThemeData,
  buttonTheme: materialLightButtonThemeData,
  textButtonTheme: appMaterialLightTextButtonThemeData,
  outlinedButtonTheme: appMaterialLightOutlinedButtonThemeData,
  dividerTheme: appMaterialLightDividerThemeData,
);

final ThemeData appMaterialDarkThemeData = ThemeData(
  applyElevationOverlayColor: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  splashFactory: appMaterialInteractiveInkFeatureFactory,
  useMaterial3: true,
  // We use this rather than colorSchemeSeed as we then can
  // customize ColorScheme via appMaterialLightColorScheme.copyWith()
  colorScheme: appMaterialDarkColorScheme,
  brightness: Brightness.dark,
  highlightColor: appMaterialDarkHighLightColor,
  splashColor: appMaterialDarkSplashColor,
  primaryColor: appMaterialDarkPrimaryColor,
  canvasColor: appMaterialDarkCanvasColor,
  scaffoldBackgroundColor: appMaterialDarkScaffoldBackgroundColor,
  dividerColor: appMaterialDarkDividerColor,
  backgroundColor: appMaterialDarkBackgroundColor,
  indicatorColor: appMaterialDarkIndicatorColor,
  errorColor: appMaterialDarkErrorColor,
  focusColor: appMaterialDarkFocusColor,
  hoverColor: appMaterialDarkHoverColor,
  shadowColor: appMaterialDarkShadowColor,
  selectedRowColor: appMaterialDarkSelectedRowColor,
  unselectedWidgetColor: appMaterialDarkUnselectedWidgetColor,
  secondaryHeaderColor: appMaterialDarkSecondaryHeaderColor,
  hintColor: appMaterialDarkHintColor,
  disabledColor: appMaterialDarkDisabledColor,
  toggleableActiveColor: appMaterialDarkToggleableActiveColor,
  dialogBackgroundColor: appMaterialDarkBackgroundColor,

  typography: appTypography,
  textTheme: appMaterialDarkTextTheme,
  primaryTextTheme: appMaterialDarkPrimaryTextTheme,
  iconTheme: appMaterialDarkIconThemeData,
  primaryIconTheme: appMaterialDarkPrimaryIconTheme,
  dialogTheme: appMaterialDarkDialogTheme,
  elevatedButtonTheme: appMaterialDarkElevatedButtonThemeData,
  buttonTheme: materialDarkButtonThemeData,
  textButtonTheme: appMaterialDarkTextButtonThemeData,
  outlinedButtonTheme: appMaterialDarkOutlinedButtonThemeData,
  dividerTheme: appMaterialDarkDividerThemeData,
);

// ignore: prefer-correct-identifier-length
final InteractiveInkFeatureFactory appMaterialInteractiveInkFeatureFactory =
    WaveSplash.customSplashFactory(
  strokeWidth: 44,
  blurStrength: 25,
);
