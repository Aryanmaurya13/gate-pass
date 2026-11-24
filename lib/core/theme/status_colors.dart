import 'package:flutter/material.dart';

/// Colours for scan results, added to the theme as a [ThemeExtension].
///
/// Each background has its own text colour. Contrast (WCAG, needs 4.5:1):
/// admitted 5.13 (white), duplicate 11.70 (black), invalid 5.62 (white).
@immutable
class StatusColors extends ThemeExtension<StatusColors> {
  const StatusColors({
    required this.admitted,
    required this.onAdmitted,
    required this.duplicate,
    required this.onDuplicate,
    required this.invalid,
    required this.onInvalid,
  });

  final Color admitted;
  final Color onAdmitted;
  final Color duplicate;
  final Color onDuplicate;
  final Color invalid;
  final Color onInvalid;

  static const standard = StatusColors(
    admitted: Color(0xFF2E7D32),
    onAdmitted: Colors.white,
    duplicate: Color(0xFFFFB300),
    onDuplicate: Colors.black,
    invalid: Color(0xFFC62828),
    onInvalid: Colors.white,
  );

  @override
  StatusColors copyWith({
    Color? admitted,
    Color? onAdmitted,
    Color? duplicate,
    Color? onDuplicate,
    Color? invalid,
    Color? onInvalid,
  }) {
    return StatusColors(
      admitted: admitted ?? this.admitted,
      onAdmitted: onAdmitted ?? this.onAdmitted,
      duplicate: duplicate ?? this.duplicate,
      onDuplicate: onDuplicate ?? this.onDuplicate,
      invalid: invalid ?? this.invalid,
      onInvalid: onInvalid ?? this.onInvalid,
    );
  }

  @override
  StatusColors lerp(ThemeExtension<StatusColors>? other, double t) {
    if (other is! StatusColors) return this;
    return StatusColors(
      admitted: Color.lerp(admitted, other.admitted, t)!,
      onAdmitted: Color.lerp(onAdmitted, other.onAdmitted, t)!,
      duplicate: Color.lerp(duplicate, other.duplicate, t)!,
      onDuplicate: Color.lerp(onDuplicate, other.onDuplicate, t)!,
      invalid: Color.lerp(invalid, other.invalid, t)!,
      onInvalid: Color.lerp(onInvalid, other.onInvalid, t)!,
    );
  }
}

extension StatusColorsX on BuildContext {
  /// Shortcut: `context.statusColors.admitted`.
  StatusColors get statusColors =>
      Theme.of(this).extension<StatusColors>() ?? StatusColors.standard;
}
