/// Interface for repository at domain layer.
abstract class IRepository {
  Future<String> getData();
}
