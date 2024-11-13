part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

class ToggleThemeEvent extends ThemeEvent {
  final bool isDarkTheme;

  ToggleThemeEvent({required this.isDarkTheme});
}
