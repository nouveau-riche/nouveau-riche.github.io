import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/header/header_bloc.dart';
import 'package:nikunj_portfolio/data/bloc/theme/theme_bloc.dart';
import 'package:nikunj_portfolio/generated/assets.dart';
import 'package:nikunj_portfolio/screens/header/header_btn_widget.dart';
import 'package:nikunj_portfolio/screens/header/theme_switcher_widget.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Container(
      height: mq.height * 0.12,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            height: 15,
            width: 15,
            color: Theme.of(context).primaryColor,
          ),
          InkWell(
            onTap: () {},
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                final isDarkTheme =
                    state is CurrentThemeState ? state.isDarkTheme : false;

                return Image.asset(
                  isDarkTheme
                      ? Assets.imagesSignatureDark
                      : Assets.imagesSignature,
                  height: 56,
                  width: 210,
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
          const Spacer(),
          BlocBuilder<HeaderBloc, HeaderState>(
            builder: (context, state) {
              final index = state is HeaderIndexValue ? state.index : 0;

              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HeaderBtnWidget(
                    text: 'ABOUT',
                    index: 0,
                    currentSelectedIndex: index,
                    scrollFunction: () {},
                  ),
                  HeaderBtnWidget(
                    text: 'RESUME',
                    index: 1,
                    currentSelectedIndex: index,
                    scrollFunction: () {},
                  ),
                  HeaderBtnWidget(
                    text: 'PROJECTS',
                    index: 2,
                    currentSelectedIndex: index,
                    scrollFunction: () {},
                  ),
                  HeaderBtnWidget(
                    text: 'CONTACT',
                    index: 3,
                    currentSelectedIndex: index,
                    scrollFunction: () {},
                  ),
                ],
              );
            },
          ),
          const SizedBox(width: 16),
          const ThemeSwitcherWidget(),
        ],
      ),
    );
  }
}
