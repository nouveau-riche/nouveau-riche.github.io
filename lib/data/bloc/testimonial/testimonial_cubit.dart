import 'package:bloc/bloc.dart';

import 'package:nikunj_portfolio/data/bloc/testimonial/testimonial_state.dart';

class TestimonialCubit extends Cubit<TestimonialState> {
  TestimonialCubit() : super(TestimonialCurrentPage(index: 0));

  updateIndex(int index) {
    emit(TestimonialCurrentPage(index: index));
  }
}
