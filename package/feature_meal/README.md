# FeatureMeal

## Additional setup steps

None.

## Standard initialization

To use this package in your application:
1. Add the package as the dependency to your `pubspec.yaml` file, like:
```yaml
  feature_meal:
    path: ../package/feature_meal
```
2. Add injection initialization (`app/lib/injection/injection.dart`):
```dart
import 'package:feature_meal/feature_meal.dart' as feature_meal;
...
feature_meal.configureInjection(getIt, environment: environment);
```

3. Add localization delegate (`app/lib/application/application.dart`):
```dart
import 'package:feature_meal.dart' as feature_meal;
...
feature_meal.FeatureMealLocalization.delegate,
...