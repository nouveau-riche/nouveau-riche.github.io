import 'package:equatable/equatable.dart';

abstract class ThemeState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class CurrentThemeState extends ThemeState {
  final bool isDarkTheme;

  CurrentThemeState({required this.isDarkTheme});

  @override
  List<Object> get props => [isDarkTheme];
}
