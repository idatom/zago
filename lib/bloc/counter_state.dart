part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterFitrah extends CounterState {
  final double value;
  CounterFitrah(this.value);
}

class CounterValue extends CounterState {
  final double value;

  CounterValue(this.value);

  @override
  List<Object> get props => [value];
}
