import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeEvent>((event, emit) {
      emit(CurrentThemeState(isDarkTheme: false));
    });
    on<ToggleThemeEvent>((event, emit) {
      emit(CurrentThemeState(isDarkTheme: event.isDarkTheme));
    });
  }
}
