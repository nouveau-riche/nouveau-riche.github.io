import 'package:equatable/equatable.dart';

abstract class HeaderState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class HeaderIndexState extends HeaderState {
  final int index;

  HeaderIndexState({required this.index});
  @override
  List<Object> get props => [index];
}
