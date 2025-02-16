import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';


part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

part '{{feature_name.snakeCase()}}_bloc.freezed.dart';

@injectable
class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc() : super(const {{feature_name.pascalCase()}}State.initial()) {
    on<{{feature_name.pascalCase()}}Event>((event, emit) => {
      // event.map(...)
    },
    );
  }
}
