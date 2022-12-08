import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState()); // * as NotifyListener in Provider
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
