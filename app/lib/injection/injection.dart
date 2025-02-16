import 'package:feature_meal/feature_meal.dart' as meal;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:nomnom_planner/injection/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection({String? environment}) {
  meal.configureInjection(getIt, environment: environment);
  getIt.init(environment: environment);
}
