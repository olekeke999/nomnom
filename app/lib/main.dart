import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nomnom_planner/route/app_router.dart';
import 'package:nomnom_planner/setup/packages_setup.dart';
import 'package:nomnom_planner/setup/root_localization.dart';

Future<void> main() async {
  await PackageSetup.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GetIt.instance<AppRouter>().config(),
      localizationsDelegates: RootLocalization.localizationDelegates,
      title: 'NomNom Planner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
    );
  }
}
