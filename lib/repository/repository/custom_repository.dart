import 'package:clean_architecture/data/data.dart';
import 'package:clean_architecture/domain/domain.dart';
import 'package:clean_architecture/repository/repository.dart';

/// Implementation of [IRepository] that uses the [DataService] to fetch data.
class CustomRepository implements IRepository {
  CustomRepository(this._dataService);
  final IData _dataService;

  @override
  Future<String> getData() async {
    final data = _dataService.fetchData();
    return '$data from CustomRepository';
  }
}
