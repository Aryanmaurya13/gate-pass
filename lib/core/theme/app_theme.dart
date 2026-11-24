import 'package:flutter/material.dart';
import 'package:gatepass/core/theme/status_colors.dart';

abstract final class AppTheme {
  static const _seed = Color(0xFF3949AB);

  static final light = ThemeData(
    colorSchemeSeed: _seed,
    extensions: const [StatusColors.standard],
  );

  static final dark = ThemeData(
    colorSchemeSeed: _seed,
    brightness: Brightness.dark,
    extensions: const [StatusColors.standard],
  );
}
