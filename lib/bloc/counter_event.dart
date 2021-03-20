part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class ResetValue extends CounterEvent {}

class CountFitrah extends CounterEvent {
  final double getFam;
  CountFitrah(this.getFam);
}

class CountFitrah2 extends CounterEvent {
  final double getFam, getMoney;
  CountFitrah2(this.getFam, this.getMoney);
}

class CountMaal extends CounterEvent {
  final double getFam, getMoney;
  CountMaal(this.getFam, this.getMoney);
}
