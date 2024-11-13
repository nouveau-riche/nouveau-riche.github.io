import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/theme/theme_bloc.dart';

class ThemeSwitcherWidget extends StatelessWidget {
  const ThemeSwitcherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDarkThem =
            state is CurrentThemeState ? state.isDarkTheme : false;

        return InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {
            context
                .read<ThemeBloc>()
                .add(ToggleThemeEvent(isDarkTheme: !isDarkThem));
          },
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: isDarkThem
                  ? const Icon(
                      Icons.dark_mode,
                      key: ValueKey('DARK'),
                      size: 24,
                    )
                  : const Icon(
                      Icons.light_mode,
                      key: ValueKey('LIGHT'),
                      size: 24,
                    ),
            ),
          ),
        );
      },
    );
  }
}
