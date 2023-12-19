part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeDataRequested extends HomeEvent {
  HomeDataRequested();
}
