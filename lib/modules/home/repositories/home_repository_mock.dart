import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(const Duration(seconds: 2));
    return DashboardModel(
      send: 100,
      receive: 50,
    );
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      EventModel(
        title: 'Churrasco',
        created: DateTime.now(),
        value: 100,
        people: 2,
      ),
      EventModel(
        title: 'Almoço',
        created: DateTime.now(),
        value: -50,
        people: 2,
      ),
      EventModel(
        title: 'Janta',
        created: DateTime.now(),
        value: 100,
        people: 2,
      ),
      EventModel(
        title: 'Larica',
        created: DateTime.now(),
        value: -100,
        people: 2,
      ),
      EventModel(
        title: 'Torta de Mortadela',
        created: DateTime.now(),
        value: 100,
        people: 2,
      ),
      EventModel(
        title: 'Macarronada',
        created: DateTime.now(),
        value: -200,
        people: 2,
      ),
      EventModel(
        title: 'Churrasco',
        created: DateTime.now(),
        value: 150,
        people: 2,
      )
    ];
  }
}
