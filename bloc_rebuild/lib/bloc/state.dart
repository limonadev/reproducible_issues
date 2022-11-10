part of 'bloc.dart';

abstract class NumberState extends Equatable {
  const NumberState({
    required this.number,
  });

  final int number;

  @override
  List<Object?> get props => [
        number,
      ];
}

class InitialNumber extends NumberState {
  const InitialNumber({
    required super.number,
  });
}

class NumberUpdateSuccess extends NumberState {
  const NumberUpdateSuccess({
    required super.number,
  });
}
