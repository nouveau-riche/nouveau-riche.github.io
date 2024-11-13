part of 'header_bloc.dart';

@immutable
sealed class HeaderState {}

final class HeaderInitialIndex extends HeaderState {}

final class HeaderIndexValue extends HeaderState {
  final int index;

  HeaderIndexValue({required this.index});
}
