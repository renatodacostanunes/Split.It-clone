import 'package:split_it/shared/models/event_model.dart';

abstract class HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateEmpty extends HomeState {}

class HomeStateFailure extends HomeState {
  HomeStateFailure({
    required this.message,
  });

  final String message;
}

class HomeStateSuccess extends HomeState {
  HomeStateSuccess({
    required this.events,
  });

  final List<EventModel> events;
}
