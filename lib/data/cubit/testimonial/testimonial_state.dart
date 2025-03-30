import 'package:equatable/equatable.dart';

abstract class TestimonialState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class TestimonialCurrentPage extends TestimonialState {
  final int index;

  TestimonialCurrentPage({required this.index});

  @override
  List<Object?> get props => [index];
}
