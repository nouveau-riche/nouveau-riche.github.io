import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/theme/theme_cubit.dart';
import 'package:nikunj_portfolio/data/bloc/theme/theme_state.dart';
import 'package:nikunj_portfolio/screens/home/home.dart';
import 'package:nikunj_portfolio/data/bloc/header/header_cubit.dart';
import 'package:nikunj_portfolio/data/bloc/testimonial/testimonial_cubit.dart';
import 'package:nikunj_portfolio/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HeaderCubit()),
        BlocProvider(create: (_) => TestimonialCubit()),
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          final themeState =
              state is CurrentThemeState ? state.themeMode : ThemeMode.light;

          return MaterialApp(
            title: "Nikunj Portfolio",
            debugShowCheckedModeBanner: false,
            theme: AppColors.lightTheme(),
            darkTheme: AppColors.darkTheme(),
            themeMode: themeState,
            home: const Home(),
          );
        },
      ),
    );
  }
}
