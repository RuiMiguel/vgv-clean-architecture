import 'package:clean_architecture/app/app.dart';
import 'package:clean_architecture/bootstrap.dart';
import 'package:clean_architecture/data/data.dart';
import 'package:clean_architecture/repository/repository.dart';

void main() {
  bootstrap(() async {
    final data = DataOffline();
    final repository = CustomRepository(data);
    return App(
      repository: repository,
    );
  });
}
