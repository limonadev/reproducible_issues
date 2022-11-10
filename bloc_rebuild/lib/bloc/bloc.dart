import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  NumberBloc()
      : super(
          const InitialNumber(
            number: 0,
          ),
        ) {
    on<NumberUpdateRequested>(_onNumberUpdateRequested);
  }

  void _onNumberUpdateRequested(
    NumberUpdateRequested event,
    Emitter emit,
  ) {
    emit(
      NumberUpdateSuccess(
        number: Random().nextInt(1000) + 1,
      ),
    );
  }
}
