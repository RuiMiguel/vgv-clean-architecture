import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture/domain/domain.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.repository}) : super(HomeState.initial()) {
    on<HomeDataRequested>(_onHomeDataRequested);
  }

  final IRepository repository;

  Future<void> _onHomeDataRequested(
    HomeDataRequested event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));
    final data = await repository.getData();
    emit(state.copyWith(status: HomeStatus.success, data: data));
  }
}
