part of 'header_bloc.dart';

@immutable
sealed class HeaderEvent {}

class UpdateHeaderSelectedButton extends HeaderEvent {
  final int index;

  UpdateHeaderSelectedButton({required this.index});
}
