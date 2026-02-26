import 'package:bloc_playground/bloc_counter/bloc/counter_event.dart';
import 'package:bloc_playground/bloc_counter/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counterValue: 0)) {
    on<CounterIncremented>((event, emit) {
      emit(CounterState(counterValue: state.counterValue + 1));
    });

    on<CounterDecremented>((event, emit) {
      emit(CounterState(counterValue: state.counterValue - 1));
    });
  }
}
