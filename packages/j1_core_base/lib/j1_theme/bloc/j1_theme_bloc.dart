import "dart:async";

import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_it/get_it.dart";
import "package:j1_core_base/j1_core_base.dart";

final _locator = GetIt.instance;

class J1ThemeBloc extends Bloc<J1ThemeEvent, J1ThemeState> {
  final J1ThemeRepository _repository;
  final void Function(Object) _onError;
  late final StreamSubscription<J1ColorScheme> _colorSchemeSubscription;
  late final StreamSubscription<J1TextTheme> _textThemeSubscription;
  late final StreamSubscription<J1PageTransition> _pageTransitionSubscription;

  J1ThemeBloc({
    J1ThemeRepository? repository,
    void Function(Object)? onError,
    required J1ColorScheme defaultColorScheme,
    required J1TextTheme defaultTextTheme,
    J1PageTransition defaultPageTransition = J1PageTransition.cupertino,
  })  : _repository = repository ?? _locator.get<J1ThemeRepository>(),
        _onError = onError ?? _defaultOnError,
        super(
          J1ThemeState(
            colorScheme: defaultColorScheme,
            textTheme: defaultTextTheme,
            pageTransition: defaultPageTransition,
          ),
        ) {
    on<UpdateColorSchemeEvent>(_onUpdateColorScheme);
    on<UpdateTextThemeEvent>(_onUpdateTextTheme);
    on<UpdatePageTransitionEvent>(_onUpdatePageTransition);

    _colorSchemeSubscription = _repository.getColorStream().listen(
          (colorScheme) => add(UpdateColorSchemeEvent(colorScheme, fromStream: true)),
        );

    _textThemeSubscription = _repository.getTextStream().listen(
          (textTheme) => add(UpdateTextThemeEvent(textTheme, fromStream: true)),
        );

    _pageTransitionSubscription = _repository.getTransitionStream().listen(
          (pageTransition) => add(UpdatePageTransitionEvent(pageTransition, fromStream: true)),
        );
  }

  Future<void> _onUpdateColorScheme(UpdateColorSchemeEvent event, Emitter<J1ThemeState> emit) async {
    if (event.colorScheme == state.colorScheme) {
      return;
    }

    emit(state.copyWith(colorScheme: event.colorScheme));

    if (event.fromStream) {
      return;
    }

    try {
      await _repository.setColorScheme(event.colorScheme);
    } catch (e) {
      _onError(e);
    }
  }

  Future<void> _onUpdateTextTheme(UpdateTextThemeEvent event, Emitter<J1ThemeState> emit) async {
    if (event.textTheme == state.textTheme) {
      return;
    }

    emit(state.copyWith(textTheme: event.textTheme));

    if (event.fromStream) {
      return;
    }

    try {
      await _repository.setTextTheme(event.textTheme);
    } catch (e) {
      _onError(e);
    }
  }

  Future<void> _onUpdatePageTransition(UpdatePageTransitionEvent event, Emitter<J1ThemeState> emit) async {
    if (event.pageTransition == state.pageTransition) {
      return;
    }

    emit(state.copyWith(pageTransition: event.pageTransition));

    if (event.fromStream) {
      return;
    }

    try {
      await _repository.setPageTransition(event.pageTransition);
    } catch (e) {
      _onError(e);
    }
  }

  @override
  Future<void> close() {
    _colorSchemeSubscription.cancel();
    _textThemeSubscription.cancel();
    _pageTransitionSubscription.cancel();
    return super.close();
  }
}

void _defaultOnError(Object e) {}
