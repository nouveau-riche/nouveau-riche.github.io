import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/cubit/theme/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(CurrentThemeState(themeMode: ThemeMode.light));

  updateTheme() {
    final themeMode = (state as CurrentThemeState).themeMode;

    if (themeMode == ThemeMode.light) {
      emit(CurrentThemeState(themeMode: ThemeMode.dark));
    } else {
      emit(CurrentThemeState(themeMode: ThemeMode.light));
    }
  }
}
