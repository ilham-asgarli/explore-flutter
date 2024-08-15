import 'package:flutter/material.dart';

class CustomColorExtension extends ThemeExtension<CustomColorExtension> {
  final Color primary;
  final Color second;
  final Color third;
  final Color fourth;

  const CustomColorExtension({
    required this.primary,
    required this.second,
    required this.third,
    required this.fourth,
  });

  @override
  ThemeExtension<CustomColorExtension> copyWith({
    Color? primary,
    Color? second,
    Color? third,
    Color? fourth,
  }) {
    return CustomColorExtension(
      primary: primary ?? this.primary,
      second: second ?? this.second,
      third: third ?? this.third,
      fourth: fourth ?? this.fourth,
    );
  }

  @override
  ThemeExtension<CustomColorExtension> lerp(
    covariant ThemeExtension<CustomColorExtension>? other,
    double t,
  ) {
    if (other is! CustomColorExtension) {
      return this;
    }

    return CustomColorExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      second: Color.lerp(second, other.second, t)!,
      third: Color.lerp(third, other.third, t)!,
      fourth: Color.lerp(fourth, other.fourth, t)!,
    );
  }
}
