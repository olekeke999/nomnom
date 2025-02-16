import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{feature_name.snakeCase()}}/src/flows/widget/{{feature_name.snakeCase()}}_content.dart';

@RoutePage()
class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  const {{feature_name.pascalCase()}}Page({super.key});

    @override
  Widget build(BuildContext context) {
    return const {{feature_name.pascalCase()}}Content();
  }
}
