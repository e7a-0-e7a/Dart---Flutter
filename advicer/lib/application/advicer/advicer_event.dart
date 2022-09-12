part of 'advicer_bloc.dart';

abstract class AdvicerEvent extends Equatable {
  const AdvicerEvent();

  @override
  List<Object> get props => [];
}

class AdvicerRequestedEvent extends AdvicerEvent {}
