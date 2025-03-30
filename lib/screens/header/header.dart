import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/cubit/theme/theme_cubit.dart';
import 'package:nikunj_portfolio/data/cubit/theme/theme_state.dart';
import 'package:nikunj_portfolio/generated/assets.dart';
import 'package:nikunj_portfolio/screens/header/header_btn_parent_widget.dart';
import 'package:nikunj_portfolio/screens/header/theme_switcher_widget.dart';
import 'package:nikunj_portfolio/utils/method_utils.dart';

class Header extends StatelessWidget {
  final ScrollController scrollController;

  const Header({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Container(
      height: mq.height * 0.12,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            color: Theme.of(context).primaryColor,
          ),
          InkWell(
            onTap: () => scrollToIndex(scrollController, 0, 0),
            child: BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                if (state is CurrentThemeState) {
                  return Image.asset(
                    state.themeMode == ThemeMode.dark
                        ? Assets.iconsSignatureDark
                        : Assets.iconsSignature,
                    height: 56,
                    width: 210,
                    fit: BoxFit.fill,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
          const Spacer(),
          HeaderBtnParentWidget(scrollController: scrollController),
          const SizedBox(width: 16),
          const ThemeSwitcherWidget(),
        ],
      ),
    );
  }
}
