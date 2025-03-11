import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/theme/theme_bloc.dart';
import 'package:nikunj_portfolio/generated/assets.dart';
import 'package:nikunj_portfolio/screens/header/header_btn_parent_widget.dart';
import 'package:nikunj_portfolio/screens/header/theme_switcher_widget.dart';

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
          HeaderBtnParentWidget(scrollController: scrollController),
          const SizedBox(width: 16),
          const ThemeSwitcherWidget(),
        ],
      ),
    );
  }
}
