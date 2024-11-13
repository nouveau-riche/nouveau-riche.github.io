import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'testimonial_event.dart';

part 'testimonial_state.dart';

class TestimonialBloc extends Bloc<TestimonialEvent, TestimonialState> {
  TestimonialBloc() : super(TestimonialInitial()) {
    on<TestimonialEvent>((event, emit) {});
    on<UpdatePageEvent>((event, emit) {
      emit(CurrentTestimonialPage(index: event.index));
    });
  }
}
