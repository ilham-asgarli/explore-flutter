part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final AppTheme appTheme;
  ThemeMode? themeMode;
  late final AppColors appColors;

  ThemeState({
    required this.appTheme,
    this.themeMode,
  }) {
    ThemeMode mode = themeMode ?? ThemeHelper.instance.getSystemThemeMode();

    if (mode == ThemeMode.light) {
      appColors = AppColorsLight();
    } else if (mode == ThemeMode.dark) {
      appColors = AppColorsDark();
    }
  }

  Map<String, dynamic> toMap() {
    return {
      "appTheme": appTheme.toString(),
      "themeMode": themeMode.toString(),
    };
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      themeMode:
          (map["themeMode"] as String).toEnum<ThemeMode>(ThemeMode.values),
      appTheme: (map["appTheme"] as String).toEnum<AppTheme>(AppTheme.values)!,
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeState.fromJson(String source) => ThemeState.fromMap(
        json.decode(
          source,
        ),
      );

  @override
  List<Object?> get props => [
        appTheme,
        themeMode,
      ];
}
