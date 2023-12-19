import 'package:flutter/material.dart';

/// Command patter for use cases.
/// How to use it:
/// final CustomUseCase useCase;
/// await useCase.execute();
abstract class BaseUseCase<Out, Params> {
  @protected
  Out run([Params? params]);

  Out execute([Params? params]) {
    return run(params);
  }
}
