import 'package:auto_route/auto_route.dart';
import 'package:feature_meal/src/flows/widget/feature_meal_content.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FeatureMealPage extends StatelessWidget {
  const FeatureMealPage({super.key});

    @override
  Widget build(BuildContext context) {
    return const FeatureMealContent();
  }
}
