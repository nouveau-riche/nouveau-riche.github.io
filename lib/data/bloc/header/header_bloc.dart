import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'header_event.dart';

part 'header_state.dart';

class HeaderBloc extends Bloc<HeaderEvent, HeaderState> {
  HeaderBloc() : super(HeaderInitialIndex()) {
    on<HeaderEvent>((event, emit) {
      emit(HeaderIndexValue(index: 0));
    });
    on<UpdateHeaderSelectedButton>((event, emit) {
      emit(HeaderIndexValue(index: event.index));
    });
  }
}
