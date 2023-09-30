part of "counter_bloc.dart";

abstract class CounterState {
  final int counter;
  CounterState({
    required this.counter,
  });
}

class CounterStateInitial extends CounterState {
  CounterStateInitial() : super(counter: 0);
}

class CounterStateData extends CounterState {
  CounterStateData(int counter) : super(counter: counter);
}
