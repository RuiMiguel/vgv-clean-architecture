import 'package:clean_architecture/domain/domain.dart';

/// [GetDataUseCase] is a use case that will get data from repository.
class GetDataUseCase extends BaseUseCase<Future<String>, void> {
  GetDataUseCase(this.repository);

  final IRepository repository;

  @override
  Future<String> run([void params]) async => repository.getData();
}
