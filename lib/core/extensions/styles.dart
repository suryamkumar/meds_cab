import 'package:flutter/material.dart';

extension StyleExtension on BuildContext {

  // Access full TextTheme
  TextTheme get style => Theme.of(this).textTheme;

  //  16sp – Main paragraph text
  //  Use for normal content body
  //  Recommended color: Colors.black87 / kPrimaryText
  TextStyle get bodyLarge => style.bodyLarge ?? const TextStyle();

  // 14sp – Secondary body textt
  // Use for descriptions, subtitles
  // Recommended color: Colors.grey.shade700 / kSecondaryTex
  TextStyle get bodyMedium => style.bodyMedium ?? const TextStyle();

  // 12sp – Small captions
  // Use for hints, timestamps, small info
  // Recommended color: Colors.grey / kGrey
  TextStyle get bodySmall => style.bodySmall ?? const TextStyle();

  // 14sp – Button text (Primary button)
  // Recommended color: kWhite (if filled button)
  TextStyle get labelLarge => style.labelLarge ?? const TextStyle();

  // 12sp – Secondary button / small button
  TextStyle get labelMedium => style.labelMedium ?? const TextStyle();

  // 11sp – Tiny label / tags
  TextStyle get labelSmall => style.labelSmall ?? const TextStyle();

  // 22sp – Card titles
  // Use for section headings inside cards
  // Recommended color: kPrimary / Colors.black
  TextStyle get titleLarge => style.titleLarge ?? const TextStyle();

  /// 16sp – List title / Medium heading
  /// Use inside ListTile titles
  TextStyle get titleMedium => style.titleMedium ?? const TextStyle();

  /// 14sp – Small title
  /// Use for compact headings
  TextStyle get titleSmall => style.titleSmall ?? const TextStyle();

  /// 32sp – Large screen heading
  /// Use for main page header
  TextStyle get headLineLarge => style.headlineLarge ?? const TextStyle();

  /// 28sp – Section heading
  /// Use for major section titles
  TextStyle get headLineMedium => style.headlineMedium ?? const TextStyle();

  /// 24sp – Sub-section heading
  TextStyle get headLineSmall => style.headlineSmall ?? const TextStyle();

  /// 57sp – Hero text (Very large)
  /// Use for splash / landing page
  TextStyle get displayLarge => style.displayLarge ?? const TextStyle();

  /// 45sp – Big marketing heading
  TextStyle get displayMedium => style.displayMedium ?? const TextStyle();

  /// 36sp – Large bold header
  TextStyle get displaySmall => style.displaySmall ?? const TextStyle();
}