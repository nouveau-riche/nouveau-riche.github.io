import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/cubit/theme/theme_cubit.dart';
import 'package:nikunj_portfolio/data/cubit/theme/theme_state.dart';

class ThemeSwitcherWidget extends StatelessWidget {
  const ThemeSwitcherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        if (state is CurrentThemeState) {
          return InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              context.read<ThemeCubit>().updateTheme();
            },
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: state.themeMode == ThemeMode.dark
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
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
