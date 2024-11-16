import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/header/header_bloc.dart';
import 'package:nikunj_portfolio/screens/header/header_btn_widget.dart';

class HeaderBtnParentWidget extends StatelessWidget {
  const HeaderBtnParentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HeaderBloc, HeaderState>(
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
    );
  }
}
