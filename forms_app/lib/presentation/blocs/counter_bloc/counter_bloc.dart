import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterIncreased>(_onCounterIncreased);
    // * Es lo mismo, cuando se pasa la misma cantidad de argumentos y del mismo tipo
    // on<CounterIncreased>((event, emit) => _onCounterIncreased(event, emit),);

    on<CounterReset>(_onCounterReset);
  }

  void _onCounterIncreased(CounterIncreased event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      counter: state.counter + event.value,
      transactionCount: state.transactionCount + 1,
    ));
  }

  void _onCounterReset(CounterReset event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(
        counter: 0,
      ),
    );
  }

  void increaseBy([int value = 1]) {
    add(CounterIncreased(value));
  }

  void resetCounter([int value = 1]) {
    add(const CounterReset());
  }
}
