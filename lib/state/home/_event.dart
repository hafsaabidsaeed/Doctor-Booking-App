part of '_bloc.dart';

@immutable
sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];

}

class LoadHomeEvent extends HomeEvent{}
