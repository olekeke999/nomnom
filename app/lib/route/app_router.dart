import 'package:auto_route/auto_route.dart';
import 'package:feature_meal/feature_meal.dart' as meal;
import 'package:injectable/injectable.dart';

@injectable
@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          initial: true,
          page: meal.FeatureMealRoute.page,
        ),
      ];
}
