import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feature_meal_event.dart';
part 'feature_meal_state.dart';

part 'feature_meal_bloc.freezed.dart';

@injectable
class FeatureMealBloc extends Bloc<FeatureMealEvent, FeatureMealState> {
  FeatureMealBloc() : super(const FeatureMealState.initial()) {
    on<FeatureMealEvent>(
      (event, emit) => {
        // event.map(...)
      },
    );
  }
}
