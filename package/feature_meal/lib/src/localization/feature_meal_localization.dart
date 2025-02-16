import 'package:flutter/material.dart';
import 'package:feature_meal/src/localization/translation/translations.i69n.dart';
import 'package:feature_meal/src/localization/translation/translations_uk.i69n.dart';

const _supportedLocales = ['en', 'uk'];

class FeatureMealLocalization {
  const FeatureMealLocalization(this.translations);

  final Translations translations;

  static final _translations = <String, Translations Function()>{
    'en': () => const Translations(),
    'uk': () => const Translations_uk(),
  };

  static const LocalizationsDelegate<FeatureMealLocalization> delegate =
      _LocalizationsDelegate();

  static final List<Locale> supportedLocales =
      _supportedLocales.map(Locale.new).toList();

  static Future<FeatureMealLocalization> load(Locale locale) => Future.value(
      FeatureMealLocalization(_translations[locale.languageCode]!()));

  static Translations of(BuildContext context) =>
      Localizations.of<FeatureMealLocalization>(
              context, FeatureMealLocalization)!
          .translations;
}

class _LocalizationsDelegate
    extends LocalizationsDelegate<FeatureMealLocalization> {
  const _LocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _supportedLocales.contains(locale.languageCode);

  @override
  Future<FeatureMealLocalization> load(Locale locale) =>
      FeatureMealLocalization.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<FeatureMealLocalization> old) =>
      false;
}
