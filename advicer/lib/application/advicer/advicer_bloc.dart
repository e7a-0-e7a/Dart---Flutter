import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    Future sleep1() {
      return Future.delayed(const Duration(seconds: 2), () => "1");
    }

    on<AdvicerRequestedEvent>(((event, emit) async {
      emit(AdvicerStateLoading());
      await sleep1();
      emit(const AdvicerStateLoaded(
          advice:
              'jsdjbc ho hh hb jhb hv kl n vjv gjdhc uhdjbkb kjbkjbkbbv gv'));
    }));
  }
}
