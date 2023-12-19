import 'package:clean_architecture/repository/repository.dart';

/// Implementation of [IData].
class DataService implements IData {
  @override
  String fetchData() {
    return 'Data from DataService';
  }
}
