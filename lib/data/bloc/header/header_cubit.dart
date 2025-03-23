import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nikunj_portfolio/data/bloc/header/header_state.dart';

class HeaderCubit extends Cubit<HeaderState> {
  HeaderCubit() : super(HeaderIndexState(index: 0));

  updateHeaderIndex(index) {
    if (state is HeaderIndexState && (state as HeaderIndexState).index == index) {
      return;
    }
    emit(HeaderIndexState(index: index));
  }
}
