import 'package:auto_route/auto_route.dart';
import 'package:feature_meal/feature_meal.dart' as meal;
import 'package:injectable/injectable.dart';
import 'package:nomnom_planner/route/app_router.gr.dart';

@injectable
@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  modules: [
    meal.FeatureMealModule,
  ],
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          initial: true,
          page: meal.FeatureMealRoute.page,
        ),
      ];
}
