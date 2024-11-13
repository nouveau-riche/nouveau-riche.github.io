part of 'testimonial_bloc.dart';

@immutable
sealed class TestimonialEvent {}

class UpdatePageEvent extends TestimonialEvent {
  final int index;

  UpdatePageEvent({required this.index});
}
