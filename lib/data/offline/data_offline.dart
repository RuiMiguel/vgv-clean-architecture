import 'package:clean_architecture/repository/repository.dart';

/// Implementation of [IData].
class DataOffline implements IData {
  @override
  String fetchData() {
    return 'Data from DataOffline';
  }
}
