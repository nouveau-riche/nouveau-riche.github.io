import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/header/header_cubit.dart';
import 'package:nikunj_portfolio/data/bloc/header/header_state.dart';
import 'package:nikunj_portfolio/screens/header/header_btn_widget.dart';

class HeaderBtnParentWidget extends StatelessWidget {
  final ScrollController scrollController;

  const HeaderBtnParentWidget({super.key, required this.scrollController});

  void scrollToIndex(int index, double height) {
    scrollController.animateTo(
      index * height,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return BlocBuilder<HeaderCubit, HeaderState>(
      buildWhen: (previous, current) {
        return previous != current;
        // if (previous is HeaderIndexState && current is HeaderIndexState) {
        //   return true;
        // }
        // return true;
      },
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
                  scrollToIndex(0, 0);
                },
              ),
              HeaderBtnWidget(
                text: 'PROJECTS',
                index: 1,
                currentSelectedIndex: index,
                scrollFunction: () {
                  scrollToIndex(1, mq.height * 1.12);
                },
              ),
              HeaderBtnWidget(
                text: 'EXPERIENCE',
                index: 2,
                currentSelectedIndex: index,
                scrollFunction: () {
                  scrollToIndex(2, mq.height * 0.995);
                },
              ),
              HeaderBtnWidget(
                text: 'CONTACT',
                index: 3,
                currentSelectedIndex: index,
                scrollFunction: () {
                  scrollToIndex(3, mq.height);
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
