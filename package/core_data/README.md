# CoreData

## Additional setup steps

None.

## Standard initialization

To use this package in your application:
1. Add the package as the dependency to your `pubspec.yaml` file, like:
```yaml
  core_data:
    path: ../package/core_data
```
2. Add injection initialization (`app/lib/injection/injection.dart`):
```dart
import 'package:core_data/core_data.dart' as core_data;
...
core_data.configureInjection(getIt, environment: environment);
```

3. Add localization delegate (`app/lib/application/application.dart`):
```dart
import 'package:core_data.dart' as core_data;
...
core_data.CoreDataLocalization.delegate,
...