part of 'theme_bloc.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {}

class CurrentThemeState extends ThemeState {
  final bool isDarkTheme;

  CurrentThemeState({required this.isDarkTheme});
}
