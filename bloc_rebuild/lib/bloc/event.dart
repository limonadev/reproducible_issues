part of 'bloc.dart';

abstract class NumberEvent extends Equatable {
  const NumberEvent();

  @override
  List<Object?> get props => [];
}

class NumberUpdateRequested extends NumberEvent {
  const NumberUpdateRequested();
}
