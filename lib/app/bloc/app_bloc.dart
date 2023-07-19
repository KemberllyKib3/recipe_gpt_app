import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_gpt/app/bloc/bloc.dart';
import 'package:recipe_gpt/domain/usecases/login_usecases.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final LoginUsecases loginUsecases;

  ApplicationBloc({
    required this.loginUsecases,
  }) : super(ApplicationState.initial()) {
    on<ApplicationStartedEvent>(_onApplicationStartedEvent);
  }

  FutureOr<void> _onApplicationStartedEvent(
    ApplicationStartedEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    emit(ApplicationState.loading());

    var result = await loginUsecases.signIn();

    result.fold(
      (failure) => emit(ApplicationState.failure(failure.message)),
      (success) => emit(ApplicationState.success(success)),
    );
  }
}
