import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class AppSharedPreferencesContract {
  SharedPreferencesAsync get localStorage;
}

@LazySingleton(as: AppSharedPreferencesContract)
class AppSharedPreferences implements AppSharedPreferencesContract {
  final SharedPreferencesAsync _prefs = SharedPreferencesAsync();

  @override
  SharedPreferencesAsync get localStorage => _prefs;
}
