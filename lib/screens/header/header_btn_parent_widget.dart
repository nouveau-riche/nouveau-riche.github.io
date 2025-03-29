import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/header/header_cubit.dart';
import 'package:nikunj_portfolio/data/bloc/header/header_state.dart';
import 'package:nikunj_portfolio/screens/header/header_btn_widget.dart';
import 'package:nikunj_portfolio/utils/method_utils.dart';

class HeaderBtnParentWidget extends StatelessWidget {
  final ScrollController scrollController;

  const HeaderBtnParentWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return BlocBuilder<HeaderCubit, HeaderState>(
      builder: (context, state) {
        if (state is HeaderIndexState) {
          final index = state.index;

          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              HeaderBtnWidget(
                text: 'ABOUT',
                index: 0,
                currentSelectedIndex: index,
                scrollFunction: () {
                  scrollToIndex(scrollController, 0, 0);
                },
              ),
              HeaderBtnWidget(
                text: 'PROJECTS',
                index: 1,
                currentSelectedIndex: index,
                scrollFunction: () {
                  scrollToIndex(scrollController, 1, mq.height * 1.12);
                },
              ),
              HeaderBtnWidget(
                text: 'EXPERIENCE',
                index: 2,
                currentSelectedIndex: index,
                scrollFunction: () {
                  scrollToIndex(scrollController, 2, mq.height * 0.995);
                },
              ),
              HeaderBtnWidget(
                text: 'CONTACT',
                index: 3,
                currentSelectedIndex: index,
                scrollFunction: () {
                  scrollToIndex(scrollController, 3, mq.height);
                },
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
