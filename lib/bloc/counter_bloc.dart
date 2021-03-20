import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial());

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is ResetValue) {
      yield CounterValue(0);
    }
    if (event is CountFitrah) {
      yield CounterValue(2.5 * event.getFam);
    }
    if (event is CountFitrah2) {
      double result = 2.5 * event.getFam * event.getMoney;
      yield CounterValue(result);
    }
    if (event is CountMaal) {
      double result = 0.025 * event.getFam * event.getMoney;
      yield CounterValue(result);
    }
  }
}
