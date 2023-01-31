import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class ThemeSettingChange extends Notification {
  ThemeSettingChange({required this.settings});

  final ThemeSettings settings;
}

class ThemeProvider extends InheritedWidget {
  const ThemeProvider(
      {Key? key,
      required this.settings,
      required this.lightDynamic,
      required this.darkDynamic,
      required Widget child})
      : super(key: key, child: child);

  final ValueNotifier<ThemeSettings> settings;
  final ColorScheme? lightDynamic;
  final ColorScheme? darkDynamic;

  Color custom(CustomColor custom) {
    if (custom.blend) {
      return blend(custom.color);
    } else {
      return custom.color;
    }
  }

  Color blend(Color targetColor) {
    return Color(
        Blend.harmonize(targetColor.value, settings.value.sourceColor.value));
  }

  Color source(Color? target) {
    Color source = settings.value.sourceColor;
    if (target != null) {
      source = blend(target);
    }
    return source;
  }

  ColorScheme colors(Brightness brightness, Color? targetColor) {
    final dynamicPrimary = brightness == Brightness.light
        ? lightDynamic?.primary
        : darkDynamic?.primary;
    return ColorScheme.fromSeed(
        seedColor: dynamicPrimary ?? source(targetColor),
        brightness: brightness);
  }

  ThemeData light([Color? targetColor]) {
    final colorScheme = colors(Brightness.light, targetColor);
    return ThemeData.light().copyWith(
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
        useMaterial3: true);
  }

  ThemeData dark([Color? targetColor]) {
    final colorScheme = colors(Brightness.dark, targetColor);
    return ThemeData.dark().copyWith(
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
        useMaterial3: true);
  }

  ThemeMode themeMode() {
    return settings.value.themeMode;
  }

  ThemeData theme(BuildContext context, [Color? targetColor]) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.light
        ? light(targetColor)
        : dark(targetColor);
  }

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) {
    return oldWidget.settings != settings;
  }
}

class ThemeSettings {
  ThemeSettings({required this.sourceColor, required this.themeMode});

  final Color sourceColor;
  final ThemeMode themeMode;
}

class CustomColor {
  const CustomColor(
      {required this.name, required this.color, this.blend = true});

  final String name;
  final Color color;
  final bool blend;

  Color value(ThemeProvider provider) {
    return provider.custom(this);
  }
}
