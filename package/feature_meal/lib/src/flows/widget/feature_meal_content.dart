import 'package:feature_meal/src/flows/bloc/feature_meal_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class FeatureMealContent extends StatelessWidget {
  const FeatureMealContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<FeatureMealBloc>(),
      child: const Scaffold(
        body: _FeatureMealScreenBody(),
      ),
    );
  }
}

class _FeatureMealScreenBody extends StatelessWidget {
  const _FeatureMealScreenBody();

  @override
  Widget build(BuildContext context) => const Placeholder();
}
