import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  String test = '';

  List<String> videoList = [
    'https://www.youtube.com/watch?v=d-QU_TYJ0B8',
    'https://www.youtube.com/watch?v=v9t6oqQPJtM',
    'https://www.youtube.com/watch?v=7R-aZfdHwMs'
  ];
}
