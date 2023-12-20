// ignore_for_file: one_member_abstracts

/// Interface for repository at domain layer.
abstract class IRepository {
  Future<String> getData();
}
