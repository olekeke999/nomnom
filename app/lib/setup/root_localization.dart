import 'package:feature_meal/feature_meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class RootLocalization {
  static final List<LocalizationsDelegate<dynamic>>
      _defaultFlutterLocalizations = [
    GlobalMaterialLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  // You have to add here package delegates.
  static final List<LocalizationsDelegate<dynamic>> _appLocalizations = [
    FeatureMealLocalization.delegate,
  ];

  static List<LocalizationsDelegate<dynamic>> get localizationDelegates => [
        RootLocalization._appLocalizations,
        RootLocalization._defaultFlutterLocalizations,
      ].expand((e) => e).toList();
}
