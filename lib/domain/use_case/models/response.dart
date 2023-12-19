/// [Response] is a base class for all responses from use cases.
sealed class Response<Out, Fail> {}

/// [Success] is a response for successful use case.
class Success<Out, Fail> extends Response<Out, Fail> {
  Success(this.data);
  final Out data;
}

/// [Error] is a response for failed use case.
class Error<Out, Fail> extends Response<Out, Fail> {
  Error(this.failure);
  final Fail failure;
}
