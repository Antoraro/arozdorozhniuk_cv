import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle chipText(BuildContext context) {
    return Theme.of(context).textTheme.button.copyWith(
          color: AppColors.dark,
          fontSize: 13.0,
          height: 1.5,
        );
  }

  static TextStyle languageText(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1.copyWith(height: 1.5);
  }

  static TextStyle contactsText(BuildContext context) {
    return Theme.of(context).textTheme.caption.copyWith(
          color: AppColors.accent,
          fontWeight: FontWeight.w100,
          height: 1.5,
        );
  }

  static TextStyle headerTitle(BuildContext context) {
    return Theme.of(context).textTheme.headline4.copyWith(
          color: AppColors.accent,
          height: 1.5,
        );
  }

  static TextStyle headerSubtitle(BuildContext context) {
    return Theme.of(context).textTheme.subtitle2.copyWith(
          color: AppColors.accent,
          height: 1.5,
        );
  }

  static TextStyle baseCardHeader(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
          color: AppColors.primary,
          height: 1.5,
        );
  }

  static TextStyle baseText(BuildContext context) {
    return Theme.of(context).textTheme.button.copyWith(height: 1.5);
  }

  static TextStyle baseListTileHeader(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          height: 1.5,
        );
  }

  static TextStyle baseListTileTrailing(BuildContext context) {
    return Theme.of(context).textTheme.caption.copyWith(height: 1.5);
  }

  static TextStyle projectInfoName(BuildContext context) {
    return Theme.of(context).textTheme.subtitle2.copyWith(
          fontWeight: FontWeight.w600,
          height: 1.5,
        );
  }

  static TextStyle responsibilitiesHeader(BuildContext context) {
    return Theme.of(context).textTheme.bodyText2.copyWith(
          decoration: TextDecoration.underline,
          height: 1.5,
        );
  }

  static TextStyle footerText(BuildContext context) {
    return Theme.of(context).textTheme.caption.copyWith(
          color: AppColors.dark,
          height: 1.5,
        );
  }

  static TextStyle linkText(BuildContext context) {
    return Theme.of(context).textTheme.caption.copyWith(
          color: AppColors.dark,
          fontWeight: FontWeight.w700,
          height: 1.5,
        );
  }
}
