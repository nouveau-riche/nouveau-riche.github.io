part of 'testimonial_bloc.dart';

@immutable
sealed class TestimonialState {}

final class TestimonialInitial extends TestimonialState {}

class CurrentTestimonialPage extends TestimonialState {
  final int index;

  CurrentTestimonialPage({required this.index});
}
