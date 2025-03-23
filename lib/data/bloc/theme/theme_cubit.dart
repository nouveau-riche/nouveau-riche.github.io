import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/theme/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(CurrentThemeState(isDarkTheme: false));

  updateTheme() {
    final isDarkTheme = state is CurrentThemeState && (state as CurrentThemeState).isDarkTheme;
    emit(CurrentThemeState(isDarkTheme: !isDarkTheme));
  }
}
