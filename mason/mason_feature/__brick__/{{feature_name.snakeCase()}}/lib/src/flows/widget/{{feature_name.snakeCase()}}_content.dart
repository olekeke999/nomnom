
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{feature_name.snakeCase()}}/src/flows/bloc/{{feature_name.snakeCase()}}_bloc.dart';


class {{feature_name.pascalCase()}}Content extends StatelessWidget {
  const {{feature_name.pascalCase()}}Content({
    super.key,
  });

    @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<{{feature_name.pascalCase()}}Bloc>(),
      child: const Scaffold(
        body: _{{feature_name.pascalCase()}}ScreenBody(),
      ),
    );
  }
}

class _{{feature_name.pascalCase()}}ScreenBody extends StatelessWidget {
  const _{{feature_name.pascalCase()}}ScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Placeholder();
}