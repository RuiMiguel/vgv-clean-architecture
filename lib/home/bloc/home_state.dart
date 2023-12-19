part of 'home_bloc.dart';

enum HomeStatus { initial, loading, success, failure }

class HomeState {
  HomeState({
    required this.status,
    required this.data,
  });

  factory HomeState.initial() => HomeState(
        status: HomeStatus.initial,
        data: '',
      );

  final HomeStatus status;
  final String data;

  HomeState copyWith({
    HomeStatus? status,
    String? data,
  }) =>
      HomeState(
        status: status ?? this.status,
        data: data ?? this.data,
      );
}
