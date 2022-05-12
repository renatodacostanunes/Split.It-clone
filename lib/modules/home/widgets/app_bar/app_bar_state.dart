import 'package:split_it/modules/home/models/dashboard_model.dart';

abstract class AppBarState {}

class AppBarStateLoading extends AppBarState {}

class AppBarStateEmpty extends AppBarState {}

class AppBarStateFailure extends AppBarState {
  AppBarStateFailure({
    required this.message,
  });

  final String message;
}

class AppBarStateSuccess extends AppBarState {
  AppBarStateSuccess({
    required this.dashboard,
  });

  final DashboardModel dashboard;
}
