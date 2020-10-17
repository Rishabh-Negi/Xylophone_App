import 'package:Xylophone/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager extends ChangeNotifier {
  final _kThemePreference = "theme_preference";
  List<Color> _theme;

  ThemeManager() {
    _load();
  }

  void _load() {
    debugPrint('Constructor invoked');
    SharedPreferences.getInstance().then((pref) {
      int prefTheme = pref.getInt(_kThemePreference) ?? 0;
      _theme = color[AppTheme.values[prefTheme]];

      notifyListeners();
    });
  }

  List<Color> get theme {
    if (_theme == null) _theme = color[AppTheme.Rainbow];

    return _theme;
  }

  setTheme(AppTheme theme) async {
    _theme = color[theme];
    notifyListeners();

    var pref = await SharedPreferences.getInstance();
    pref.setInt(_kThemePreference, AppTheme.values.indexOf(theme));
  }
}
