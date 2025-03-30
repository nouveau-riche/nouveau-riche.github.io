import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ThemeState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class CurrentThemeState extends ThemeState {
  final ThemeMode themeMode;

  CurrentThemeState({required this.themeMode});

  @override
  List<Object> get props => [themeMode];
}
