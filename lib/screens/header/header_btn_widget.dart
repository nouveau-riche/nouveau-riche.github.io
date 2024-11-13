import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/header/header_bloc.dart';

class HeaderBtnWidget extends StatelessWidget {
  final int index;
  final String text;
  final int currentSelectedIndex;
  final void Function() scrollFunction;

  const HeaderBtnWidget({
    super.key,
    required this.index,
    required this.text,
    required this.currentSelectedIndex,
    required this.scrollFunction,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          color: currentSelectedIndex == index
              ? Theme.of(context).primaryColor
              : null,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () {
        context.read<HeaderBloc>().add(
              UpdateHeaderSelectedButton(index: index),
            );
      },
    );
  }
}
